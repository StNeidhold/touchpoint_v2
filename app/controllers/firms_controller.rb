class FirmsController < ApplicationController
  def index
    @q = Firm.ransack(params[:q])
    @firms = @q.result(:distinct => true).includes(:contacts, :touchpoints, :follow_ups, :target_firms, :recruiting_events).page(params[:page]).per(10)

    render("firms/index.html.erb")
  end

  def show
    @recruiting_event = RecruitingEvent.new
    @target_firm = TargetFirm.new
    @follow_up = FollowUp.new
    @touchpoint = Touchpoint.new
    @contact = Contact.new
    @firm = Firm.find(params[:id])

    if @firm.ticker != "Private"
    # Stock Data Pull
    stock_url = "http://finance.google.com/finance/info?client=ig&q=#{@firm.exchange}%3A#{@firm.ticker}"
    stock_raw_data = open(stock_url).read
    stock_data1 = stock_raw_data.gsub("[", "")
    stock_data2 = stock_data1.gsub("]", "")
    stock_parsed_data = JSON.parse(stock_data2)
    @price = stock_parsed_data["l"]
    @change = stock_parsed_data["c"]
    @percen = @change.to_f / (@price.to_f - @change.to_f) * 10000
    @percen_change = @percen.round / 100.0
    end
    
    # Generic News API Data
    news_api_key = "cc67e2f543e140c0802a04e95d83e259"
    news_api_source = "financial-times"
    news_api_url = "https://newsapi.org/v1/articles?source=the-next-web&sortBy=latest&apiKey=#{news_api_key}"

    # NYT API Data
    # example string -- https://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=6dd1588e26e448f3860c40b15c4d2677&q=Evercore&sort=newest
    nyt_api_key= "6dd1588e26e448f3860c40b15c4d2677"
    nyt_api_firm = "#{@firm.name.gsub(" ","-")}"
    nyt_api_search = "#{@firm.name.gsub(" ","-")}"
    nyt_api_sort = "newest"
    nyt_api_url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=#{nyt_api_key}&q=#{nyt_api_search}&sort=#{nyt_api_sort}&fq=acquisition"
    nyt_raw_data = open(nyt_api_url).read
    nyt_parsed_data = JSON.parse(nyt_raw_data)

    @nyt_title1 = nyt_parsed_data["response"]["docs"][1]["headline"]["main"]
    @nyt_snippet1 = nyt_parsed_data["response"]["docs"][1]["snippet"]
    @nyt_url1 = nyt_parsed_data["response"]["docs"][1]["web_url"]
    @nyt_date1 = nyt_parsed_data["response"]["docs"][1]["pub_date"]
    @nyt_source1 = nyt_parsed_data["response"]["docs"][1]["source"]

    @nyt_title2 = nyt_parsed_data["response"]["docs"][2]["headline"]["main"]
    @nyt_snippet2 = nyt_parsed_data["response"]["docs"][2]["snippet"]
    @nyt_url2 = nyt_parsed_data["response"]["docs"][2]["web_url"]
    @nyt_date2 = nyt_parsed_data["response"]["docs"][2]["pub_date"]
    @nyt_source2 = nyt_parsed_data["response"]["docs"][2]["source"]

    @nyt_title3 = nyt_parsed_data["response"]["docs"][3]["headline"]["main"]
    @nyt_snippet3 = nyt_parsed_data["response"]["docs"][3]["snippet"]
    @nyt_url3 = nyt_parsed_data["response"]["docs"][3]["web_url"]
    @nyt_date3 = nyt_parsed_data["response"]["docs"][3]["pub_date"]
    @nyt_source3 = nyt_parsed_data["response"]["docs"][3]["source"]

    # long logo logic - needs to be shortened somehow
    if @nyt_source1 == ""
      @nyt_source1 = "The New York Times"
    end
    if @nyt_source2 == ""
      @nyt_source2 = "The New York Times"
    end
    if @nyt_source3 == ""
      @nyt_source3  = "The New York Times"
    end


    # trying to make stories dynamically populated, unsuccessful thus far
    # counter = 1
    # @hash = []
    # loop do
    #   @hash.each { |name, value| instance_variable_set("@nyt_title#{counter}", nyt_parsed_data["response"]["docs"]["#{counter}"]["headline"]["main"] ) }
    #   @hash.each { |name, value| instance_variable_set("@nyt_snippet#{counter}", nyt_parsed_data["response"]["docs"]["#{counter}"]["snippet"]) }
    #   @hash.each { |name, value| instance_variable_set("@nyt_url#{counter}", nyt_parsed_data["response"]["docs"]["#{coutner}"]["web_url"]) }
    #   @hash.each { |name, value| instance_variable_set("@nyt_date#{counter}", nyt_parsed_data["response"]["docs"]["#{counter}"]["pub_date"]) }
    #   @hash.each { |name, value| instance_variable_set("@nyt_source#{counter}", nyt_parsed_data["response"]["docs"]["#{counter}"]["source"]) }
    #   counter = counter + 1
    #   break if counter > 3
    # end

    render("firms/show.html.erb")
  end

  def new
    @firm = Firm.new

    render("firms/new.html.erb")
  end

  def create
    @firm = Firm.new

    @firm.name = params[:name]
    @firm.industry = params[:industry]
    @firm.league = params[:league]
    @firm.size = params[:size]
    @firm.process_type = params[:process_type]
    @firm.ticker = params[:ticker]
    @firm.exchange = params[:exchange]

    save_status = @firm.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firms/new", "/create_firm"
        redirect_to("/firms")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm created successfully.")
      end
    else
      render("firms/new.html.erb")
    end
  end

  def edit
    @firm = Firm.find(params[:id])

    render("firms/edit.html.erb")
  end

  def update
    @firm = Firm.find(params[:id])

    @firm.name = params[:name]
    @firm.industry = params[:industry]
    @firm.league = params[:league]
    @firm.size = params[:size]
    @firm.process_type_id = params[:process_type_id]
    @firm.ticker = params[:ticker]
    @firm.exchange = params[:exchange]

    save_status = @firm.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firms/#{@firm.id}/edit", "/update_firm"
        redirect_to("/firms/#{@firm.id}", :notice => "Firm updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm updated successfully.")
      end
    else
      render("firms/edit.html.erb")
    end
  end

  def destroy
    @firm = Firm.find(params[:id])

    @firm.destroy

    if URI(request.referer).path == "/firms/#{@firm.id}"
      redirect_to("/", :notice => "Firm deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Firm deleted.")
    end
  end
end

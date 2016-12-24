class FirmOfficesController < ApplicationController
  def index
    @firm_offices = FirmOffice.all

    render("firm_offices/index.html.erb")
  end

  def show
    @firm_office = FirmOffice.find(params[:id])

    render("firm_offices/show.html.erb")
  end

  def new
    @firm_office = FirmOffice.new

    render("firm_offices/new.html.erb")
  end

  def create
    @firm_office = FirmOffice.new

    @firm_office.firm_id = params[:firm_id]
    @firm_office.city_id = params[:city_id]
    @firm_office.integer = params[:integer]

    save_status = @firm_office.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firm_offices/new", "/create_firm_office"
        redirect_to("/firm_offices")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm office created successfully.")
      end
    else
      render("firm_offices/new.html.erb")
    end
  end

  def edit
    @firm_office = FirmOffice.find(params[:id])

    render("firm_offices/edit.html.erb")
  end

  def update
    @firm_office = FirmOffice.find(params[:id])

    @firm_office.firm_id = params[:firm_id]
    @firm_office.city_id = params[:city_id]
    @firm_office.integer = params[:integer]

    save_status = @firm_office.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firm_offices/#{@firm_office.id}/edit", "/update_firm_office"
        redirect_to("/firm_offices/#{@firm_office.id}", :notice => "Firm office updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm office updated successfully.")
      end
    else
      render("firm_offices/edit.html.erb")
    end
  end

  def destroy
    @firm_office = FirmOffice.find(params[:id])

    @firm_office.destroy

    if URI(request.referer).path == "/firm_offices/#{@firm_office.id}"
      redirect_to("/", :notice => "Firm office deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Firm office deleted.")
    end
  end
end

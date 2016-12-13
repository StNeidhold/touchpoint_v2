class IbGroupsController < ApplicationController
  def index
    @ib_groups = IbGroup.all

    render("ib_groups/index.html.erb")
  end

  def show
    @ib_group = IbGroup.find(params[:id])

    render("ib_groups/show.html.erb")
  end

  def new
    @ib_group = IbGroup.new

    render("ib_groups/new.html.erb")
  end

  def create
    @ib_group = IbGroup.new

    @ib_group.name = params[:name]

    save_status = @ib_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ib_groups/new", "/create_ib_group"
        redirect_to("/ib_groups")
      else
        redirect_back(:fallback_location => "/", :notice => "Ib group created successfully.")
      end
    else
      render("ib_groups/new.html.erb")
    end
  end

  def edit
    @ib_group = IbGroup.find(params[:id])

    render("ib_groups/edit.html.erb")
  end

  def update
    @ib_group = IbGroup.find(params[:id])

    @ib_group.name = params[:name]

    save_status = @ib_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ib_groups/#{@ib_group.id}/edit", "/update_ib_group"
        redirect_to("/ib_groups/#{@ib_group.id}", :notice => "Ib group updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ib group updated successfully.")
      end
    else
      render("ib_groups/edit.html.erb")
    end
  end

  def destroy
    @ib_group = IbGroup.find(params[:id])

    @ib_group.destroy

    if URI(request.referer).path == "/ib_groups/#{@ib_group.id}"
      redirect_to("/", :notice => "Ib group deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ib group deleted.")
    end
  end
end

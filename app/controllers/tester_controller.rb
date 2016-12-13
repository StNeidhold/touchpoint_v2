class TesterController < ApplicationController
  def main
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    @firm = Firm.find_by(:name => "Evercore")

    @name_banner = ""
    @main_banner_flag = 0

    render("/test_page.html.erb")
  end

  def update
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    @firm = Firm.find(params[:firm_id])

    @name_banner = @firm.name
    @main_banner_flag = 1

    render("/test_page.html.erb")
  end
end

class TestController < ApplicationController
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

    render("/test/test_main.html.erb")
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

    render("/test/test_firms.html.erb")
  end

  def dashboard

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all
    @groups = Group.all

    # @firm = Firm.find(params[:firm_id])
    render("/test/test_dashboard.html.erb")
  end

  def firms
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    # Causes default firm to be Evercore, for now
    @firm = Firm.find_by(:name => "Evercore")

    @name_banner = @firm.name
    @main_banner_flag = 1

    render("/test/test_firms.html.erb")
  end

  def timeline
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    render("/test/test_timeline.html.erb")
  end

  def blank
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    render("/test/blank_test.html.erb")
  end

  def firm_status
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all
    @firm = Firm.find(params[:id])

    render("/test/firm_status.html.erb")
  end

  def landing
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @firms = Firm.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    render("/test/test_landing.html.erb")
  end

end

class DashboardController < ApplicationController
  def main
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    @milestones = Milestone.all
    @contacts = Contact.all
    @target_firms = TargetFirm.all
    @recruiting_events = RecruitingEvent.all
    @touchpoints = Touchpoint.all

    render("/dashboard.html.erb")
  end
end

class LandingController < ApplicationController
  def main
    # @q = Group.ransack(params[:q])
    # @groups = @q.result(:distinct => true).includes(:group_members, :users).page(params[:page]).per(10)

    render("/landing.html.erb")
  end
end

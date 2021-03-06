Rails.application.routes.draw do
  # Routes for the Event_attendee resource:
  # CREATE
  get "/event_attendees/new", :controller => "event_attendees", :action => "new"
  post "/create_event_attendee", :controller => "event_attendees", :action => "create"

  # READ
  get "/event_attendees", :controller => "event_attendees", :action => "index"
  get "/event_attendees/:id", :controller => "event_attendees", :action => "show"

  # UPDATE
  get "/event_attendees/:id/edit", :controller => "event_attendees", :action => "edit"
  post "/update_event_attendee/:id", :controller => "event_attendees", :action => "update"

  # DELETE
  get "/delete_event_attendee/:id", :controller => "event_attendees", :action => "destroy"
  #------------------------------

  # Routes for the Firm_office resource:
  # CREATE
  get "/firm_offices/new", :controller => "firm_offices", :action => "new"
  post "/create_firm_office", :controller => "firm_offices", :action => "create"

  # READ
  get "/firm_offices", :controller => "firm_offices", :action => "index"
  get "/firm_offices/:id", :controller => "firm_offices", :action => "show"

  # UPDATE
  get "/firm_offices/:id/edit", :controller => "firm_offices", :action => "edit"
  post "/update_firm_office/:id", :controller => "firm_offices", :action => "update"

  # DELETE
  get "/delete_firm_office/:id", :controller => "firm_offices", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Business_school resource:
  # CREATE
  get "/business_schools/new", :controller => "business_schools", :action => "new"
  post "/create_business_school", :controller => "business_schools", :action => "create"

  # READ
  get "/business_schools", :controller => "business_schools", :action => "index"
  get "/business_schools/:id", :controller => "business_schools", :action => "show"

  # UPDATE
  get "/business_schools/:id/edit", :controller => "business_schools", :action => "edit"
  post "/update_business_school/:id", :controller => "business_schools", :action => "update"

  # DELETE
  get "/delete_business_school/:id", :controller => "business_schools", :action => "destroy"
  #------------------------------

  # Routes for the Firm_group resource:
  # CREATE
  get "/firm_groups/new", :controller => "firm_groups", :action => "new"
  post "/create_firm_group", :controller => "firm_groups", :action => "create"

  # READ
  get "/firm_groups", :controller => "firm_groups", :action => "index"
  get "/firm_groups/:id", :controller => "firm_groups", :action => "show"

  # UPDATE
  get "/firm_groups/:id/edit", :controller => "firm_groups", :action => "edit"
  post "/update_firm_group/:id", :controller => "firm_groups", :action => "update"

  # DELETE
  get "/delete_firm_group/:id", :controller => "firm_groups", :action => "destroy"
  #------------------------------

  # Routes for the Ib_group resource:
  # CREATE
  get "/ib_groups/new", :controller => "ib_groups", :action => "new"
  post "/create_ib_group", :controller => "ib_groups", :action => "create"

  # READ
  get "/ib_groups", :controller => "ib_groups", :action => "index"
  get "/ib_groups/:id", :controller => "ib_groups", :action => "show"

  # UPDATE
  get "/ib_groups/:id/edit", :controller => "ib_groups", :action => "edit"
  post "/update_ib_group/:id", :controller => "ib_groups", :action => "update"

  # DELETE
  get "/delete_ib_group/:id", :controller => "ib_groups", :action => "destroy"
  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "touchpoints#dashboard"

# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# XXXXXXXXXXXXXx    TEST PAGES XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

#ONLY FOR DESIGN TESTING
get "/test", :controller => :test, :action => "main"

#for reload of page after firm seletion w/ params
get "/test/firm_update", :controller => :test, :action => "update"

#for reload of page after firm seletion w/ params
get "/test/test_dashboard", :controller => :test, :action => "dashboard"

#for reload of page after firm seletion w/ params
get "/test/test_landing", :controller => :test, :action => "landing"

#for reload of page after firm seletion w/ params
get "/test/test_firms", :controller => :test, :action => "firms"

#for reload of page after firm seletion w/ params
get "/test/test_timeline", :controller => :test, :action => "timeline"

#for reload of page after firm seletion w/ params
get "/test/blank_test", :controller => :test, :action => "blank"

#for reload of page after firm seletion w/ params
get "/test/firm_status/:id", :controller => :test, :action => "firm_status"

# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

  #Routes for dashboard
  get "/dashboard", :controller => "touchpoints", :action => "dashboard"

  #Routes for landing
  get "/landing", :controller => "landing", :action => "main"


  # Routes for the Milestone resource:
  # CREATE
  get "/milestones/new", :controller => "milestones", :action => "new"
  post "/create_milestone", :controller => "milestones", :action => "create"

  # READ
  get "/milestones", :controller => "milestones", :action => "index"
  get "/milestones/:id", :controller => "milestones", :action => "show"

  # UPDATE
  get "/milestones/:id/edit", :controller => "milestones", :action => "edit"
  post "/update_milestone/:id", :controller => "milestones", :action => "update"

  # DELETE
  get "/delete_milestone/:id", :controller => "milestones", :action => "destroy"
  #------------------------------

  # Routes for the Verify resource:
  # CREATE
  get "/verifies/new", :controller => "verifies", :action => "new"
  post "/create_verify", :controller => "verifies", :action => "create"

  # READ
  get "/verifies", :controller => "verifies", :action => "index"
  get "/verifies/:id", :controller => "verifies", :action => "show"

  # UPDATE
  get "/verifies/:id/edit", :controller => "verifies", :action => "edit"
  post "/update_verify/:id", :controller => "verifies", :action => "update"

  # DELETE
  get "/delete_verify/:id", :controller => "verifies", :action => "destroy"
  #------------------------------

  # Routes for the Target_firm resource:
  # CREATE
  get "/target_firms/new", :controller => "target_firms", :action => "new"
  post "/create_target_firm", :controller => "target_firms", :action => "create"

  # READ
  get "/target_firms", :controller => "target_firms", :action => "index"
  get "/target_firms/:id", :controller => "target_firms", :action => "show"

  # UPDATE
  get "/target_firms/:id/edit", :controller => "target_firms", :action => "edit"
  post "/update_target_firm/:id", :controller => "target_firms", :action => "update"

  # DELETE
  get "/delete_target_firm/:id", :controller => "target_firms", :action => "destroy"
  #------------------------------

  # Routes for the Touchpoint resource:
  # CREATE
  get "/touchpoints/new", :controller => "touchpoints", :action => "new"
  post "/create_touchpoint", :controller => "touchpoints", :action => "create"

  # READ
  get "/touchpoints", :controller => "touchpoints", :action => "index"
  get "/touchpoints/:id", :controller => "touchpoints", :action => "show"

  # UPDATE
  get "/touchpoints/:id/edit", :controller => "touchpoints", :action => "edit"
  post "/update_touchpoint/:id", :controller => "touchpoints", :action => "update"

  # DELETE
  get "/delete_touchpoint/:id", :controller => "touchpoints", :action => "destroy"
  #------------------------------

  # Routes for the Recruiting_event resource:
  # CREATE
  get "/recruiting_events/new", :controller => "recruiting_events", :action => "new"
  post "/create_recruiting_event", :controller => "recruiting_events", :action => "create"

  # READ
  get "/recruiting_events", :controller => "recruiting_events", :action => "index"
  get "/recruiting_events/:id", :controller => "recruiting_events", :action => "show"

  # UPDATE
  get "/recruiting_events/:id/edit", :controller => "recruiting_events", :action => "edit"
  post "/update_recruiting_event/:id", :controller => "recruiting_events", :action => "update"

  # DELETE
  get "/delete_recruiting_event/:id", :controller => "recruiting_events", :action => "destroy"
  #------------------------------

  # Routes for the Firm resource:
  # CREATE
  get "/firms/new", :controller => "firms", :action => "new"
  post "/create_firm", :controller => "firms", :action => "create"

  # READ
  get "/firms", :controller => "firms", :action => "index"
  get "/firms/:id", :controller => "firms", :action => "show"

  # UPDATE
  get "/firms/:id/edit", :controller => "firms", :action => "edit"
  post "/update_firm/:id", :controller => "firms", :action => "update"

  # DELETE
  get "/delete_firm/:id", :controller => "firms", :action => "destroy"
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get "/contacts/new", :controller => "contacts", :action => "new"
  post "/create_contact", :controller => "contacts", :action => "create"

  # READ
  get "/contacts", :controller => "contacts", :action => "index"
  get "/contacts/:id", :controller => "contacts", :action => "show"

  # UPDATE
  get "/contacts/:id/edit", :controller => "contacts", :action => "edit"
  post "/update_contact/:id", :controller => "contacts", :action => "update"

  # DELETE
  get "/delete_contact/:id", :controller => "contacts", :action => "destroy"
  #------------------------------

  # Routes for the Follow_up resource:
  # CREATE
  get "/follow_ups/new", :controller => "follow_ups", :action => "new"
  post "/create_follow_up", :controller => "follow_ups", :action => "create"

  # READ
  get "/follow_ups", :controller => "follow_ups", :action => "index"
  get "/follow_ups/:id", :controller => "follow_ups", :action => "show"

  # UPDATE
  get "/follow_ups/:id/edit", :controller => "follow_ups", :action => "edit"
  post "/update_follow_up/:id", :controller => "follow_ups", :action => "update"

  # DELETE
  get "/delete_follow_up/:id", :controller => "follow_ups", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Group_member resource:
  # CREATE
  get "/group_members/new", :controller => "group_members", :action => "new"
  post "/create_group_member", :controller => "group_members", :action => "create"

  # READ
  get "/group_members", :controller => "group_members", :action => "index"
  get "/group_members/:id", :controller => "group_members", :action => "show"

  # UPDATE
  get "/group_members/:id/edit", :controller => "group_members", :action => "edit"
  post "/update_group_member/:id", :controller => "group_members", :action => "update"

  # DELETE
  get "/delete_group_member/:id", :controller => "group_members", :action => "destroy"
  #------------------------------

  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# Contacts seeded with 40 items
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'contacts.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Contact.new
#   t.first_name = row['first_name']
#   t.last_name = row['last_name']
#   t.firm_id = row['firm_id']
#   t.group = row['group']
#   t.division = row['title']
#   t.photo = row['photo']
#   t.business_card = row['business_card']
#   t.email = row['email']
#   t.phone_number = row['phone_number']
#   t.privacy = row['privacy']
#   t.alma_mater = row['alma_mater']
#   t.save
#   puts "#{t.first_name}, #{t.last_name} saved"
# end
#
# puts "There are now #{Contact.count} rows in the contacts table"

# 18 firms seeded
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'firms.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Firm.new
#   t.name = row['name']
#   t.industry = row['industry']
#   t.size = row['size']
#   t.process_type = row['process_type']
#   t.league = row['league']
#   t.save
#
#   puts "#{t.name}, #{t.league} saved"
# end
#
# puts "There are now #{Firm.count} rows in the firms table"

# 250 follow ups seeded
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'follow_ups.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = FollowUp.new
#   t.follow_up_type = row['follow_up_type']
#   t.touchpoint_id = row['touchpoint_id']
#   t.user_id = row['user_id']
#   t.firm_id = row['firm_id']
#   t.contact_id = row['contact_id']
#   t.notes = row['notes']
#   t.save
#
#   puts "#{t.follow_up_type} saved"
# end
#
# puts "There are now #{FollowUp.count} rows in the follow-ups table"

# 250 follow ups seeded
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'group_members.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = GroupMember.new
#   t.group_id = row['group_id']
#   t.user_id = row['user_id']
#   t.is_admin = row['is_admin']
#   t.save
#
#   puts "#{t.group_id} saved"
# end
#
# puts "There are now #{GroupMember.count} rows in the group memberss table"

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'groups.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Group.new
#   t.name = row['name']
#   t.school = row['school']
#   t.industry = row['industry']
#   t.open_or_closed = row['open_or_closed']
#   t.hidden_or_public = row['hidden_or_public']
#   t.password = row['password']
#   t.save
#
#   puts "#{t.name}, #{t.school} saved"
# end
#
# puts "There are now #{Group.count} rows in the groups table"

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'milestones.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Milestone.new
#   t.campus_recruiting_start= row['campus_recruiting_start']
#   t.closed_events_start = row['closed_events_start']
#   t.bankweek = row['bankweek']
#   t.interviews_start = row['interviews_start']
#   t.group_id = row['group_id']
#   t.save
#
#   puts "#{t.group_id}, saved"
# end
#
# puts "There are now #{Milestone.count} rows in the milestones table"

# SOMETHING WRONG WITH RECRUITING EVENTS SEED
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'recruiting_events.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = RecruitingEvent.new
#   t.name = row['name']
#   t.location = row['location']
#   t.address = row['address']
#   t.date = row['date']
#   t.start_time = row['start_time']
#   t.end_time = row['end_time']
#   t.closed = row['closed']
#   t.firm_id = row['firm_id']
#   t.privacy = row['privacy']
#   t.save
#
#   puts "#{t.name}, saved"
# end
#
# puts "There are now #{RecruitingEvent.count} rows in the recruiting events table"

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'target_firms.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = TargetFirm.new
#   t.user_id = row['user_id']
#   t.firm_id = row['firm_id']
#   t.touch_goal = row['touch_goal']
#   t.privacy = row['privacy']
#   t.save
#
#   puts "#{t.firm_id}, saved"
# end
#
# puts "There are now #{TargetFirm.count} rows in the Target Firms table"

#seed messed up
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'touchpoints.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Touchpoint.new
#   t.date = row['date']
#   t.time = row['time']
#   t.user_id = row['user_id']
#   t.contact_id = row['contact_id']
#   t.firm_id = row['firm_id']
#   t.description = row['description']
#   t.location = row['location']
#   t.notes = row['notes']
#   t.privacy = row['privacy']
#   t.save
#
#   puts "#{t.description}, saved"
# end
#
# puts "There are now #{Touchpoint.count} rows in the Touchpoints table"

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'users.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = User.new
#   t.email = row['email']
#   t.password = row['password']
#   t.username = row['username']
#   t.first_name = row['first_name']
#   t.last_name = row['last_name']
#   t.organization = row['organization']
#   t.save
#
#   puts "#{t.first_name}, saved"
# end
#
# puts "There are now #{User.count} rows in the Users table"

# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'verifies.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Verify.new
#   t.user_id = row['user_id']
#   t.recruiting_event_id = row['recruiting_event_id']
#   t.save
#
#   puts "#{t.user_id}, saved"
# end
#
# puts "There are now #{Verify.count} rows in the verifies table"


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

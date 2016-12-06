# README

This application (Touchpoints) is designed as a tool for use by MBA students who are engaged in full-time recruting for Investment Banking.  Although I ultimately would want to support wider application (other types of job applicants, other industries), this very specific use-case was adopted to target and focus the workload, and because the networking portion of investment banking recruiting is fairly formulaic.

Unfortunately, I have yet to create all the functionality that I would like with the app.  I will break the description of the app down into 2 section: current capabilities and intended future capabilities.  I do intend to follow through with completed development in order to provide a finished product to Booth IBG, however it is what it is at this point.

Problem Statement:  Investment Banking recruting at the MBA level involves a significant amount of networking.  Over the course of approximately three months, students network with banks and bankers across a variety of events, ranging from formal presentations at school to informal phone conversations to meeting at off-campus bank-hosted networking events.  The sheer volume of touchpoints creates a long list of people from various banks with which a given recruit has networked.  Successfully navigating the recruiting process requires that these touchpoints be available to recall (the question of "who have you met?" is often asked).Additionally, interactions are often followed up with some sort of corresondence (thank-you notes, requests for follow-up conversations).  All of this information requires diligent tracking; however, the common (and only) method that I have seen for doing this is using an excel spreadsheet.  The goal of Touchpoint is to provide a better, value-added alternative.

Key Elements: The main element of Touchpoints can be referenced in the domain model, but include:

Users - these are the MBA student recruits

Contacts - these are bankers or bank representatives

Touchpoints - these are intersections between Contacts (bankers) and Users.  A Touchpoint documents an interaction, and stores identifying material like firm, location, and meeting notes in addition to logging the participants

Target Firms - these are the firms which a user is focusing on in their recruting.  The target firm list is used to highlight elements related to those banks which will be of interest to the user.  Target firms are also used to log "Touch goals."  These aren't yet as nuanced as I would like, but they are intended to set a goal for a number of touchpoints that a user wishes to generate with a target firm by recruiting season end.

Recruiting Events - these are firm sponsored or facilited recruiting events

Groups - though not fully developed or tested, groups are intended to allow users to affiliate with affinity groups, most notably their recruiting class, but also could be user created groups composed of specific people who wish to pool information

Other models and join models exist as well, but they support the main elements listed above.


Validations:  Data validations have been entered for most elements to prevent the creation of incomplete rows.  Many db elements do not have validations simply becuase they are not yet functional.


Seeds:  The application was seeded multiple times with .csv files, but due to some errors in the process around failing to properly save all data, most of the database's were cleared and manually repopulated via the app with a minimum number of test inputs.


Capabilities (current):  Users can sign up, they can create contacts, touchpoints, firms, and recruiting events.  They can view those events through one of several interfaces which are still rough.  The main viewport is inteded to the the "Dashboard" which will ultimately array pertinent information in a value-added way.  Right now it aggregates and displays a user's touchpoints, contacts, target firms, and (all, for now) recruiting events.  I am working on different display methods (graphs) but those are underdeveloped at this time.  The UI is out-of-the-box bootstap, but will ultimately be transitioned to something more differentiated.

Capabilities(inteded):  The biggest element of that that I haven't properly developed is the idea of sharing contact information.  Most of the models have a "Privacy" column, and ultimately I want users to be able to edit their privacy options so that some of their information will become visible to either their group or to all users.  The intention would be to display annonymously.  The hook to get people to share is that once they share their information (annonymously), they will be able to view everyone else's information that has been shared to groups they belong to.  The UI also needs significant work, including more usefully arraying information, the addition of a sidebar to more clearly display site architecture for the user, full accomodation of Groups and their presentation, and a way to appropriately display shared information.












This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

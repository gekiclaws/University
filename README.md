67-272: University 
---

This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.  

This branch is for an exercise in building an API endpoint.  Specifically, you need to build a route, controller, and a set of serializers that will create the JSON example found in the `docs` directory.

To start this exercise, first run `bundle install` to get the `fast_jsonapi` gem into the project.  After that, run `rails db:contexts` and reset the database and create a series of departments, faculty, courses, and assignments to work with.

After this, start with the following steps:

1. Create a custom route in `config/routes.rb`. This will go into the `v1` namespace, not in the main section of the routes.  The URL for this endpoint is: `http://localhost:3001/v1/departments`

2. There is a shell called `departments_controller.rb` within the `app/controller/api/v1` directory.  Inside the file, add the lines to the `index` to generate the json for active departments in alphabetical order.
  
3. Create a series of serializers with the `rails g serializer` command and then flesh out those serializers so that it create the json as seen in the sample given.  Start with just a department serializer and get the main part of that correct before adding on the faculty json.

Qapla'

Prof. H

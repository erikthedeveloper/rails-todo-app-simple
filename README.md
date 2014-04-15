## Rails TODO App (simple)

A simple TODO app *built* **in the works** to illustrate the beauty of learning Ruby on Rails.

This will ultimately serve as a RESTful json API to be consumed by its sister project, an AngularJS SPA TODO app.

In the meantime in will take many forms.

There are a variety of relationships between users, projects, tasklists, tasks, and tags.

Oversimplified relationships: *user->projects->tasklists->tasks<->tags*

For an idea of the overall structure checkout **db/schema.rb** and the **app/models** directory

## Features Implemented

* Basic models and ORM relationships set up
* 1st revision Ajax (using Rail's format.js method(s)) CRUD for Users, Projects, Tasklists, and Tasks (from '/' dashboard)

## TODO

* Refine ORM relationships
* Model validation/etc...
* 1st revision json api
* Link up AngularJS TODO app

### Installation

For now... steer clear ;). But if you must

    git clone https://github.com/erikthedeveloper/rails-todo-app-simple.git
    cd rails-todo-app-simple # project directory
    rake db:setup
    rails server
    # Head on over to http://localhost:3000

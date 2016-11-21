# README

## Prerequisites

[Docker](http://docker.com) installed

## Development Environment

    docker-compose up
    docker-compose exec web rails db:migrate

Open in browser: [http://localhost:3000](http://localhost:3000)

> Sign-Up in order to have access to the Admin section

### Day-to-day development process

#### Model

To create a new model:

    docker-compose exec web rails g model NAME [field[:type][:index] field[:type][:index]] [options]
    #
    # example:
    #
    docker-compose exec web rails g model HighScore game:string score:integer

> make sure to run DB migrations

    docker-compose exec web rails db:migrate


#### Controller

To create a new controller:

    docker-compose exec web rails g controller NAME [action action] [options]
    #
    # example:
    #
    docker-compose exec web rails g controller CreditCards open debit credit close


#### Scaffold

A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.


Syntax is the same as for model generator.

Example:

    docker-compose exec web rails g scaffold HighScore game:string score:integer


> make sure to run DB migrations

    docker-compose exec web rails db:migrate

## Troubleshooting

### web_1 keeps restarting

Sometimes server is not stopping in clean way.
System thinks the server is still running.

Try to execute:

    rm tmp/pids/server.pid


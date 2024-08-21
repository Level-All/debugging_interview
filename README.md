# Level All Debugging Interview

## Blog App

For our debugging interview, we'll be working in a basic blog application.

## Dependencies Setup

* Install Postgres: Please ensure you have a working copy of Postgres 16+ installed. For MacOS, we recommend using https://postgresapp.com
* Run `asdf install` to install the proper versions of Elixir and Erlang listed in the `.tool-versions` file (or use a dependency manager of your choice)
* Clear any existing databases: `mix ecto.drop && MIX_ENV=test mix ecto.drop`
* Create the databases: `mix ecto.create && mix ecto.migrate`
* Seed the database: `mix run priv/repo/seeds.exs`

**NOTE**: Please do not continue further with running application until the interview.

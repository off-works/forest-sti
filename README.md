<div align="center">
  <a href="https://off-works.com">
    <img width="100" height="100" src="https://s3.eu-central-1.amazonaws.com/static.off-works.com/asset/logo/og-logo.png">
  </a>
</div>

# Forest Admin - STI Error
### Sandbox project to reproduce problem with Forest STI and Ruby Rails Cache

#### Problem Description

Using Forest Admin along with Rails and STI, reload breaks everything.
When the Rails cache is deactivated for development purposes, declared STI systematically down the response.

Console issue:
```sh
Forest 🌳🌳🌳  Records Index error: Invalid single-table inheritance type: XXX is not a subclass of YYY
```
Where `XXX` extends `YYY`, and `YYY` extends `ActiveRecord::Base`

#### Project Setup

- Download dependencies by running `bundle install`
- In `config/database.yml` file, check your local database configuration
- Your Forest credentials must be placed in `config/initializers/forest_liana.rb` file
- Then run `rails db:drop db:create db:migrate db:seed`
- Simply execute `rails server`

Your server is running.

> If everything is OK, you should see `Started`
> when requesting on http://localhost:3000.
> Six entries also must be existing in your user
> table, in a database named forest_sti.

#### Steps to reproduce

Just go to the corresponding Forest Admin environment using your favorite browser.
At first sight, everything is OK. You can activate `User` and his 2 STI `Client` / `Staff` in Forest layout.

Try to get the resources. Alright, database content is displayed.
Now proceed to Rails live reload by modifying a file. For example, you can add `binding.pry` in `app/models/client.rb`.

That's it. Try to get resources again for Forest Admin, and you will get the STI error.

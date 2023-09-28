# EarlyBird

A very simple Gem to add waitlist functionality to a WIP Rails app.

## Usage
Follow the installation instructions and you're good to go!

## Installation
Add this line to your application's Gemfile:

```ruby
gem "early_bird"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install early_bird
```

Then install the migrations:
```bash
$ bin/rails early_bird:install:migrations
```

And migrate the database:
```bash
$ bin/rails db:migrate
```

EarlyBird requires both new and show views:
```ruby
# app/views/early_bird/submissions/new.html.erb
<%= form_with(model: @submission) do |form| %>
  <%= form.email_field :email, placeholder: "Your email" %>
  <%= form.submit "Join the Waitlist" %>
<% end %>
```

```ruby
# app/views/early_bird/submissions/show.html.erb
<p>Thank you! <%= @submission.email %> has been added to the waitlist!</p>
```

Then mount the engine in your routes.rb file:
```ruby
mount EarlyBird::Engine => "/"
```

And (optionally) prevent access to the rest of the app while you're building it:
```ruby
class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "dev", password: "secret"
end
``` 

## Contributing
Contributions welcome

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

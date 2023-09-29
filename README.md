# EarlyBird

A very simple Gem to add waitlist functionality to a WIP Rails app.

## Future Features
I plan to add automated invite codes in the near future

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

EarlyBird requires new and show views to be implemented in your app:
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

In your application_controller.rb file, define an `authenticate_user!` method, which EarlyBird skips (to allow access to the waitlist while preventing access to the rest of the app):
```ruby
class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private 

  def authenticate_user!
    http_basic_authenticate_with name: "dev", password: "secret"
  end
end
``` 

## Contributing
Contributions welcome

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

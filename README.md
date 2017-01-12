# AddActiveToLink

Welcome to the add_active_to_link gem! It is a jQuery snippet for Rails projects that parses the url for the current page, and adds an 'active' class decoration to links that match the current page.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'add_active_to_link'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install add_active_to_link

## Usage


Copy the add_active_to_link.js file to your project. (For a Rails project you would put it in vendor/assets/javascripts/). Then reference the file in your project 
```
//= require add_active_to_link
```

To use in the context of a Rails app with TurboLinks use the following snippet.

```
$(document).on('turbolinks:load', function() {
  var active_elements = $("header .navbar-nav li a");
  setActiveLink(active_elements);
});
```
Add this snippet to the app/assets/javascript/application.js file. Make sure that the add_active_to_link.js file is in your loadpath
You can modify the active_elements variable if you want to point at different links.

In a non-TurboLinks environment, you can invoke the method using this form in your application.js file. 
```
$(function() {
  var active_elements = $("header .navbar-nav li a");
  setActiveLink(active_elements);
});
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dschmura/add_active_to_link_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


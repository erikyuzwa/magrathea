# Magrathea

This is intended to be a drop-in starting point for handling light and dark mode CSS switching in your Rails app.

I've come from supporting many web applications, each with various "evolutions" of their CSS / SCSS structure. It
remains to be seen how effective this approach is, but I was hoping to have something of a "starting point" that I could
bring to projects and/or could be used.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'magrathea'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install magrathea

## Usage

In `application.css` add:
```
    *= require magrathea
```

In `application.js` add:
```
    //= require magrathea
```

Somewhere in an app view, you'll need to add the markup for the switch code as well:
```
    <div class="magrathea-switch-wrapper">
        <label class="magrathea-switch" for="checkbox">
            <input type="checkbox" id="checkbox" />
            <div class="slider round"></div>
        </label>
        <em>Enable Dark Mode!</em>
    </div> 
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also
run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version
number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git
commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/erikyuzwa/magrathea. This project is intended
to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the
[code of conduct](https://github.com/erikyuzwa/magrathea/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Magrathea project's codebases, issue trackers, chat rooms and mailing lists is expected to
follow the [code of conduct](https://github.com/erikyuzwa/magrathea/blob/master/CODE_OF_CONDUCT.md).

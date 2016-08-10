# TemplateParamsRails
Runtime type-check for template preconditions, including instance variables
and local variables. Think of this as the method signature of a template.
There should be at least one of these assertions in almost every template.

template_params-rails project integrates [template_params](https://github.com/jaredbeck/template_params) for rails.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'template_params-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install template_params-rails

## Usage

In template, you may want to use template_param like this:

```ruby

# Assert `poll` is defined. If not, raises an `ArgumentError` (the "arguments"
# of the template are invalid).
template_param { poll }

# Assert `@course` is defined. Meaningless because instance variables are
# always defined.
template_param { @course }

# Assert `poll.is_a?(::Poll)`. If not, raises a `TypeError`.
template_param(::Poll) { poll }

# Assert `@course.is_a?(::Course)`
template_param(::Course) { @course }

# Assert `@course` is either a `::Course` or `nil`
template_param(::Course, allow_nil: true) { @course }
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/opodartho/template_params-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


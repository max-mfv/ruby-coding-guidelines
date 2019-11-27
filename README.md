# MFV Style Guides

This gem contains the Ruby, Rails, HAML and SCSS style guides, as well as Rubocop configs that enforce the rules in the Ruby and Rails Style guides.

* [Ruby Style Guide](mf_ruby_style_guide.md)
* [Rails Style Guide](mf_rails_style_guide.md)
* [SCSS Style Guide](mf_scss_style_guide.md)

## Installation

### For a Rails app:

- add the following lines to `development` and `test` groups of your project's Gemfile:
  ```
  gem 'mfv_style_guide', git: 'git@github.com:moneyforwardvietnam/ruby-coding-guidelines.git', branch: 'master'
  ```
- create a file named `.rubocop.yml` in your project's root with the following contents:
  ```
  inherit_gem:
    mfv_style_guide: config/default.yml
  ```
- add the following to your `.circleci/config.yml` file:
  ```
  jobs:
    build:
      steps:
        # ...
        - run:
            name: Rubocop
            command: bundle exec rake 'mfv_style_guide:dirtycop[--branch]'
        # ...
  ```

## Config files

- [default.yml](config/default.yml):
    Contains all parameters for cops apart from `Enabled`. If you want to change a cop parameter, do it here. If a cop doesn't have any parameters apart from `Enabled`, it won't be here.
- [enabled.yml](config/enabled.yml):
    Contains all cops, in `Enabled: true` state. Use this file for reference, usually you won't need to change anything here.
- [disabled.yml](config/disabled.yml):
    Contains all cops that are disabled. If you want to disable a cop, do it here.

## Contributing

Please file an issue in this repository if you think:

- a rule is set incorrectly
- a rule should be disabled
- a new rule should be added
- style guide should be amended

or any other issue you might have with the contents of this repository.

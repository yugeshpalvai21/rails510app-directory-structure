# README

#### clone and cd into app the it sets ruby 2.5.9 on local if rbenv or rvm or asdf version manager existed else create one
  ``` rbenv install 2.5.9 && rbenv local 2.5.9```

#### install bundler 
  ``` gem install bundler:1.17.3```
  ``` bin/bundle install ```
  > Optional: in case if `unable to install pg gem` error appears then run `sudo apt install libpq-dev` helps here.

#### create database and run migrations
 ``` bin/rails db:create && bin/rails db:schema:load && bin/rails db:migrate```

#### generate controller with action and without assets and helper
  ``` bin/rails g controller <Controller_name> <action> --no-assets --no-helper```

#### run server locally
  ``` bin/rails s```


# New Features in Ruby on Rails 5.1

## 1. Yarn Integration
- **JavaScript Dependency Management**: Rails 5.1 introduces native integration with [Yarn](https://yarnpkg.com/), a package manager for JavaScript. This allows Rails applications to manage JavaScript dependencies more effectively.

## 2. Webpack Integration
- **Webpacker Gem**: Rails now supports Webpack through the `webpacker` gem, providing a modern JavaScript compilation and bundling setup.
- **ES6+ and Other Modern JS**: Developers can now use ES6+, CoffeeScript, TypeScript, and other modern JavaScript flavors in their Rails applications.

## 3. System Tests
- **System Testing with Capybara**: Rails 5.1 introduces built-in support for system tests using Capybara, making it easier to write end-to-end tests that simulate user interactions in a browser.

## 4. Encrypted Secrets
- **Encrypted Credentials**: Rails 5.1 adds the ability to manage secrets securely using encrypted credentials. This feature allows developers to keep sensitive information like API keys safe and version-controlled.

## 5. Parameterized Mailers
- **Mailers with Parameters**: Action Mailer in Rails 5.1 supports parameterized mailers, making it easier to pass arguments to mailer methods and improving the readability and maintainability of mailer code.

## 6. Form with `form_with`
- **Unified Form Helper**: The `form_with` helper is introduced as a unified form helper, replacing `form_for` and `form_tag`. It automatically determines whether to build forms for new or existing records.

## 7. Improved Test Runner
- **Parallel Testing**: Rails 5.1 introduces a new, faster test runner that allows tests to be run in parallel, improving the speed and efficiency of the testing process.

## 8. `belongs_to` Optional by Default
- **Optional `belongs_to`**: The `belongs_to` association is now optional by default, reversing the Rails 5.0 behavior where it was required by default.

## 9. JavaScript Improvements
- **Rails UJS**: Rails 5.1 updates Unobtrusive JavaScript (UJS) to use vanilla JavaScript instead of jQuery, reducing the dependency on jQuery for handling things like AJAX requests and form submissions.

## 10. Enhanced Migration Features
- **Add Reference with Index and Foreign Key**: A single migration can now add a reference with both an index and a foreign key constraint using a single command:
  ```ruby
  add_reference :table, :reference, foreign_key: true

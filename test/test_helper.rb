ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require File.expand_path('../support/api_schema_assertions', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include ApiSchemaAssertions
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

ActiveSupport::TestCase.test_order = :random

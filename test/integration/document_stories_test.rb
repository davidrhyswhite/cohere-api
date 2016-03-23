require 'test_helper'

class DocumentStoriesTest < ActionDispatch::IntegrationTest

  setup do
    @document = documents :valid
  end

  test "should fetch all documents" do
    get "/documents"

    assert_response_schema :documents, @response
  end

  test "should fetch a single document" do
    get "/documents/#{@document.id}"

    assert_response_schema :document, @response
  end
end

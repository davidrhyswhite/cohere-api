require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  test "should have the necessary required validators" do
    document = Document.new
    assert_not document.valid?
    assert_equal %i(title), document.errors.keys
  end
end

require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents :valid
  end

  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should create document" do
    assert_difference 'Document.count' do
      post documents_url, params: { document: { body: @document.body, title: @document.title } }
    end

    assert_response 201
  end

  test "should show document" do
    get document_url(@document)
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { body: @document.body, title: @document.title } }
    assert_response 200
  end

  test "should destroy document" do
    assert_difference 'Document.count', -1 do
      delete document_url(@document)
    end

    assert_response 204
  end
end

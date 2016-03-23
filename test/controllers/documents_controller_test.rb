require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents :valid
  end

  test 'should get index' do
    get documents_url

    assert_response 200
    assert_response :success
    assert_response_schema :documents, @response
  end

  test 'should create document' do
    assert_difference 'Document.count' do
      post documents_url, params: { document: { body: @document.body, title: @document.title } }
    end

    assert_response 201
    assert_response :created
    assert_response_schema :document, @response
  end

  test 'should not create document if invalid' do
    assert_no_difference 'Document.count' do
      post documents_url, params: { document: { body: @document.body, title: '' } }
    end

    assert_response 422
    assert_response :unprocessable_entity
  end

  test 'should show document' do
    get document_url(@document)

    assert_response :success
    assert_response_schema :document, @response
  end

  test 'should update document' do
    patch document_url(@document), params: { document: { body: @document.body, title: @document.title } }

    assert_response 200
    assert_response :ok
    assert_response_schema :document, @response
  end

  test 'should not update document if invalid' do
    patch document_url(@document), params: { document: { body: @document.body, title: '' } }

    assert_response 422
    assert_response :unprocessable_entity
  end

  test 'should destroy document' do
    assert_difference 'Document.count', -1 do
      delete document_url(@document)
    end

    assert_response 204
    assert_response :no_content
  end
end

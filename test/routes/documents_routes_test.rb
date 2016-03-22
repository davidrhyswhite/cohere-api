class DocumentRoutesTest < ActionController::TestCase
  test 'should route to documents' do
    assert_routing '/documents', { controller: 'documents', action: 'index' }
  end

  test 'should route to document' do
    assert_routing '/documents/1', { controller: 'documents', action: 'show', id: '1' }
  end

  test 'should route to create document' do
    assert_routing({ method: 'post', path: '/documents' }, { controller: 'documents', action: 'create' })
  end

  test 'should route to update document' do
    assert_routing({ method: 'patch', path: '/documents/1' }, { controller: 'documents', action: 'update', id: '1' })
  end

  test 'should route to destroy document' do
    assert_routing({ method: 'delete', path: '/documents/1' }, { controller: 'documents', action: 'destroy', id: '1' })
  end
end

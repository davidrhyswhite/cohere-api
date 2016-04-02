class UsersRoutesTest < ActionController::TestCase
  test 'should route to users' do
    assert_routing '/users', { controller: 'users', action: 'index' }
  end

  test 'should route to document' do
    assert_routing '/users/1', { controller: 'users', action: 'show', id: '1' }
  end

  test 'should route to create document' do
    assert_routing({ method: 'post', path: '/users' }, { controller: 'users', action: 'create' })
  end

  test 'should route to update document' do
    assert_routing({ method: 'patch', path: '/users/1' }, { controller: 'users', action: 'update', id: '1' })
  end

  test 'should route to destroy document' do
    assert_routing({ method: 'delete', path: '/users/1' }, { controller: 'users', action: 'destroy', id: '1' })
  end
end

# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test 'should get index' do
    get '/'
    assert_redirected_to new_user_session_path
  end
end

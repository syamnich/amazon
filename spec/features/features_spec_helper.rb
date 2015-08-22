require 'spec_helper'
require 'capybara/session'

#include Warden::Test::Helpers
#
#RSpec.configure do |config|
#  config.before(:each) do
#    Capybara.reset_sessions!
#  end
#end
#
#def sign_in(user=nil, scope=:user)
#  user ||= create(scope)
#  login_as user, scope: scope
#end
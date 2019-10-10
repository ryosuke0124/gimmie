class UsersController < ApplicationController
  before_action :logical_delete_user
  before_action :authenticate_user!
end

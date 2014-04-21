class UsersController < ApplicationController
  before_filter :security

  def index
    @users = User.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end

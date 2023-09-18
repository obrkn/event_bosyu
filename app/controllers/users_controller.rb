class UsersController < ApplicationController
  def index
    @users = if params[:name].present?
               User.where('name LIKE ?', "%#{params[:name]}%")
             else
               User.all
             end
  end
end

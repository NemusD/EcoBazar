class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        # Encuentra al usuario por su ID
        @user = User.find(params[:id]) 
        @products = @user.products
    end
  end
  
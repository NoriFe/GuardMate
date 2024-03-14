# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's profile page
      redirect_to user
    else
      # Display an error message and re-render the login form
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    # Log out the current user
    redirect_to root_url
  end
end

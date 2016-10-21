class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:login, :create]

  def login; end

  def create
    auth_hash = request.env['omniauth.auth']
    redirect to creation_failure_path unless auth_hash['uid']

    @user = User.find_by(uid: auth_hash[:uid], provider: 'github')
    if @user.nil?
      # User doesn't match anything in the DB.
      # Attempt to create a new user.
      @user = User.build_from_github(auth_hash)
      render :creation_failure unless @user.save
    end

    # Save the user ID in the session
    session[:user_id] = @user.id

    redirect_to tasks_path
  end

  def login_failure; end

  def logout
    # allows the user to log-out
    session.delete(:user_id)
    redirect_to root_path
  end
end

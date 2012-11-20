class LoginController < ApplicationController
  @@email = "hello"
  def index
    session[:user_id] = nil
    if request.post?
      logged_in_user = User.try_to_login(params[:login][:email],params[:login][:password])
      if logged_in_user
        if params[:login][:remember_me] == "1"
          logged_in_user.remember_me unless logged_in_user.remember_token?
          cookies[:auth_token] = { :value => self.logged_in_user.remember_token , :expires => self.logged_in_user.remember_token_expires_at }
        end
        session[:user_id] = logged_in_user.id
        redirect_to("/")
      else
        @@email = params[:login][:email]
        flash[:notice] = "Invalid user/password combination"
        redirect_to(:controller => "login", :action => "index")
      end
    end
  end
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:controller => "login",:action => "index")
  end
end

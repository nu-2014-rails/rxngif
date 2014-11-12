class SessionsController < ApplicationController
  def new
  end
  
  def create
    u = User.find_by_email(params["email"])
    if u && u.authenticate(params["password"])
      session["user_id"] = u.id
      redirect_to "/gifs"
    else
      redirect_to "/login", notice: "Make sure your email and password are correct and make sure cookies are enabled"
    end
  end
  
  def destroy
    session["user_id"] = nil
    redirect_to "/login", notice: "You've been logged out"
  end
end
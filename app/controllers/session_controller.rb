class SessionController < ApplicationController
  def new
  end

  def create
    response = MonkID.login!(email: params[:email], password: params[:password])
    session["user_guid"] = response["user"]["guid"]

    user = User.find_by_monk_id(response["user"]["guid"])
    redirect_to user_url(user)
  end

  def destroy
    reset_session
  end
end

class HomeController < ApplicationController
  def top
  end

  def create
    @user = User.new(
      name: params[:name],
      password: params[:password]
    )
    if @user.save
      redirect_to("/s1711581/my_diary")
    else
      render("home/new")
    end
  end

  def new
    @user = User.new
  end

end

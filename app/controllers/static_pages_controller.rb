class StaticPagesController < ApplicationController
  def about 
  end

  def home
    @user = current_user
  end

  def help
  end
end

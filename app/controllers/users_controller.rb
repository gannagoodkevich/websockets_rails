class UsersController < ApplicationController
  protect_from_forgery except: :new

  def new
    respond_to do |format|
      format.js
    end
  end
end

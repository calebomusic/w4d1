class CommentsController < ApplicationController
  def index
    if params[:user_id]
      # debugger
      user = User.find_by(id: params[:user_id])
      render json: [user.comments]
    else
      contact = Contact.find_by(id: params[:contact_id])
      render json: [contact.comments]
    end
  end

  def create
  end

  def destroy
  end

  def update
  end

  def show
  end
end

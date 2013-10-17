class LinksController < ApplicationController

  def new
    @link = Link.new
    authorize! :create, @link, message: "You need to be an admin to do that."
  end

  def create 
    @link = Link.new(params[:link])
    authorize! :create, @link, message: "You need to be an admin to do that."
    if @link.save
      flash[:notice] = "Link was saved successfully."
      redirect_to @link
    else
      flash[:error] = "Error creating link. Please try again."
      render :new
    end
  end

  def show
    @link = Link.find(params[:id])
  end

end

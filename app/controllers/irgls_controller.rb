class IrglsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  def index
    @irgls = Irgl.all
  end
  
  def new
    @irgl = Irgl.new
  end

  def create
    Irgl.create(irgl_params)
  end

  def destroy
    irgl = Irgl.find(params[:id])
    irgl.destroy
  end

  def edit
  
  end

  def update
    irgl = Irgl.find(params[:id])
    irgl.update(irgl_params)
  end

  def show
 
  end


  private
  def irgl_params
    params.require(:irgl).permit(:name, :image, :text)
  end

  def set_tweet
    @irgl = Irgl.find(params[:id])
  end
  
  
end


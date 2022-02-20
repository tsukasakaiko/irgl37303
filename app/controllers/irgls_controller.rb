class IrglsController < ApplicationController
  before_action :set_irgl, only: [:edit, :show]

  def index
    @irgls = Irgl.includes(:user).order("created_at DESC")
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
    @comment = Comment.new
    @comments = @irgl.comments.includes(:user)
  end


  private
  def irgl_params
    params.require(:irgl).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_irgl
    @irgl = Irgl.find(params[:id])
  end
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end


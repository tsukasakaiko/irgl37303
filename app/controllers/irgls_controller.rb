class IrglsController < ApplicationController
  def index
    @irgls = Irgl.all
  end
  
  def new
    @irgl = Irgl.new
  end
end

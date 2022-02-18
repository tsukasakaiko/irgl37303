class IrglsController < ApplicationController
  def index
    @irgls = Irgl.all
  end
  
end

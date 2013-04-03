class TemasController < ApplicationController
  # To change this template use File | Settings | File Templates.
  def new
    @tema = Tema.new
  end

  def confirm

  end

  def collect
     @tema= Tema.select
  end

  def create
    @tema = Tema.new(params[:tema])
      if @tema.save
        redirect_to '/temas/confirm'
      else
        render 'new'
      end
  end

end
class ReunioneController < ApplicationController

  def list
    @reuniones = Reunione.all
  end

  # GET /reuniones/new
  # GET /reuniones/new.json
  def new
    @reunion = Reunione.new


  end

  def create
    @reunion = Reunione.new(params[:reunione])
    begin
    if @reunion.save
      redirect_to '/reuniones/list'
    else
      render 'new'
    end
    rescue
      render 'new'
    end

  end






end

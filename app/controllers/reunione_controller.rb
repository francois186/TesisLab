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
  def edit
    @reunion = Reunione.find params[:id]
  end

  def update
    @reunion = Reunione.find params[:id]
    begin
    if @reunion.update_attributes(params[:reunione])
      logger.debug "pudo grabar"
      redirect_to '/reuniones/list'
    else
      render 'edit'
    end
    end

  end


end

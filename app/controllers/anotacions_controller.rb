class AnotacionsController < ApplicationController
  def new
    @anotacion = Anotacion.new
    #@fuente = FuenteBibliografica.find(params[:fuenteid])
  end
  def create
    @anotacion = Anotacion.new(params[:anotacion])
    if @anotacion.save
      redirect_to '/anotacions/list'
    else
      render 'new'
    end
  end
  def show
    @anotaciones = Anotacion.find(params[:fuenteid])
    @fuente = FuenteBibliografica.find(params[:fuenteid])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json=> ['anotaciones'=>@anotaciones],include=>['fuente'=>@fuente] }
    end
  end
  def list
    @todasanotaciones = Anotacion.all
    respond_to do |format|
      format.html # list.html.erb
      format.json { render json: @todasanotaciones }
    end
  end

  def filter
   # @anotacionesfilt = FuenteBibliografica.scoped
    @anotacionesfilt = @anotacionesfilt.fuente_bibliografica(params[:fuenteid]) unless params[:fuenteid].blank?
   # count = @anotaciones.count
    render :json => ['anotaciones' => @anotacionesfilt], :include=> [:fuente_bibliografica]
  end
end

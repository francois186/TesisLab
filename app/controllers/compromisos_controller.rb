class CompromisosController < ApplicationController

  def list
    @lista = Compromiso.new.compromisos_con_estudiantes
    puts @lista
  end

  def compromiso_estudiante
    @compromisos = Compromiso.new.consultar_compromisos_estudiante(params[:CODIGO])
  end

  def new
    @compromiso = Compromiso.new
  end

  def create
    @compromiso = Compromiso.new(params[:compromiso])
    if @compromiso.save
      redirect_to '/compromisos/list'
    else
      render 'new'
    end

  end


  def eventos

    @lista = Compromiso.all
    @events  = Array.new
      Event.delete_all

    @lista.each do |compro|

      temp=Event.create(id:compro.id,end:compro.FECHA_COMPROMETIDA,start:compro.FECHA_COMPROMETIDA,title:compro.TITULO,url:"")

        @events.append(temp)
    end

    @eventos2=Event.find(:all, :select => "id, title,start,url", :conditions => {  } )
    respond_to do |format|
      format.html
      format.json{
        render :json => @eventos2.to_json
      }

  end

  end

  def edit
    @compromiso = Compromiso.find params[:id]
  end

  def update
    @compromiso = Compromiso.find params[:id]
    if @compromiso.update_attributes params[:compromiso]
      redirect_to '/compromisos/list'
    else
      render 'edit'
    end
  end

  def ag_compromiso
    puts '--------------'
    puts 'id: ' + params[:id]
    puts '--------------'
    puts 'el tag: ' +params[:tg]
    puts '--------------'
    #if Tag.new.asignar_tag_compromiso(@x, params[:tg])
    #  alert('Se ha creado el tag!')
    #else
    #  alert('No se ha podido crear el tag')
    #end
    redirect_to '/compromisos/list'
  end

end


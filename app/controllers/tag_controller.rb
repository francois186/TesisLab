class TagController < ApplicationController

  def reuniones
    @resultado = Tag.new.dar_reuniones_de_tag(params[:tag])
    @@var = params[:tag]
  end

  def fuentes
    @resultado = Tag.new.dar_fuentes_de_tag(@@var)
  end

  def archivos
    @resultado = Tag.new.dar_archivos_de_tag(@@var)
  end

  def temas
    @resultado = Tag.new.dar_temas_de_tag(@@var)
  end

  def compromisos
    @resultado = Tag.new.dar_compromisos_de_tag(@@var)
  end

  def buscar
  end

  def new
  end

  def create
    @tag = Tag.new
    @tag.NOMBRE = params[:nombre]
    @tag.DESCRIPCION = params[:desc]

    if @tag.save
      redirect_to '/tag/confirma'
    else
      render 'new'
    end
  end

  def dar_objetos
    Tag.new.dar_objetos(params[:tipo])
  end

  def conf
    puts '----------------'+@eltipo.to_s+'------------------'+@eltag.to_s
    if @eltipo == 'Temas'
      Tag.new.asignar_tag_tema(params[:c], @eltag)
    elsif @eltipo == 'Reuniones'
      Tag.new.asignar_tag_reunion(params[:c], @eltag)
    elsif @eltipo == 'Fuentes'
      Tag.new.asignar_tag_fuente(params[:c], @eltag)
    elsif @eltipo == 'Compromisos'
      Tag.new.asignar_tag_compromiso(params[:c], @eltag)
    else
      Tag.new.asignar_tag_archivo(params[:c], @eltag)
    end
  end

end

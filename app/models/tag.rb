class Tag < ActiveRecord::Base
  attr_accessible :NOMBRE, :DESCRIPCION, :id
  @id
  def crear_tag(desc, nomb)
    @tag = Tag.new
    @tag.NOMBRE = nomb
    @tag.DESCRIPCION = desc
    @tag.save
  end

  def dar_tags
    Tag.select('DISTINCT NOMBRE')
       .order('NOMBRE ASC')
  end

  def dar_fuentes_de_tag(tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', tag)
    x.each do |i|
      @id = i.id
    end

    @r = TagPuente.select('fuente_bibliograficas.*')
        .joins('join fuente_bibliograficas on tag_puentes.ID_FUENTE = fuente_bibliograficas.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('fuente_bibliograficas.AUTOR ASC')
    return @r
  end

  def dar_archivos_de_tag(tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', tag)
    x.each do |i|
      @id = i.id
    end

    @r = TagPuente.select('archivos.*')
        .joins('join archivos on tag_puentes.ID_ARCHIVO = archivos.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('archivos.NOMBRE ASC')
    return @r
  end

  def dar_reuniones_de_tag(tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', tag)
    x.each do |i|
      @id = i.id
    end

    @r = TagPuente.select('reuniones.*')
        .joins('join reuniones on tag_puentes.ID_REUNION = reuniones.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('reuniones.FECHA ASC')
    return @r
  end

  def dar_temas_de_tag(tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', tag)
    x.each do |i|
      @id = i.id
    end

    @r = TagPuente.select('temas.*')
        .joins('join temas on tag_puentes.ID_TEMA = temas.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('temas.NOMBRE ASC')
    return @r
  end

  def dar_compromisos_de_tag(tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', tag)
    x.each do |i|
      @id = i.id
    end

    @r = TagPuente.select('compromisos.*')
        .joins('join compromisos on tag_puentes.ID_COMPROMISO = compromisos.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('compromisos.TITULO ASC')
    return @r
  end

  def asignar_tag_fuente(id, nombre_tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', nombre_tag)
    x.each do |i|
      @t = i.id
    end
    @tp = TagPuente.new
    @tp.ID_TAG = @t
    @tp.ID_FUENTE = id
    @tp.save
  end

  def asignar_tag_tema(id, nombre_tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', nombre_tag)
    x.each do |i|
      @t = i.id
    end
    @tp = TagPuente.new
    @tp.ID_TAG = @t
    @tp.ID_TEMA = id
    @tp.save
  end

  def asignar_tag_reunion(id, nombre_tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', nombre_tag)
    x.each do |i|
      @t = i.id
    end
    @tp = TagPuente.new
    @tp.ID_TAG = @t
    @tp.ID_REUNION = id
    if @tp.save
      return true
    else
      return false
    end
  end

  def asignar_tag_archivo(id, nombre_tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', nombre_tag)
    x.each do |i|
      @t = i.id
    end
    @tp = TagPuente.new
    @tp.ID_TAG = @t
    @tp.ID_ARCHIVO = id
    @tp.save
  end

  def asignar_tag_compromiso(id, nombre_tag)
    x = Tag.select('tags.id').where('NOMBRE = ?', nombre_tag)
    x.each do |i|
      @t = i.id
    end
    @tp = TagPuente.new
    @tp.ID_TAG = @t
    @tp.ID_COMPROMISO = id
    @tp.save
  end

  def dar_temas
    return Tema.select('NOMBRE, id')
  end

  def dar_reuniones
    return Reunione.select('FECHA, id')
  end

  def dar_fuentes
    return FuenteBibliografica.select('AUTOR, id')
  end

  def dar_compromisos
    return Compromiso.select('TITULO, id')
  end

  def dar_archivos
    return Archivo.select('NOMBRE, id')
  end

  def asignar
  end

  def parcial
  end

  def dar_objetos(par)
    puts '----------------------'
    puts par.to_s
    puts '----------------------'
    if par == 'Temas'
      return Tag.new.dar_temas
    elsif par == 'Reuniones'
      return Tag.new.dar_reuniones
    elsif par == 'Fuentes'
      return Tag.new.dar_fuentes
    elsif par == 'Compromisos'
      return Tag.new.dar_compromisos
    else
      return Tag.new.dar_archivos
    end
  end

end

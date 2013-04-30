class Tag < ActiveRecord::Base
  attr_accessible :NOMBRE, :DESCRIPCION

  def crear_tag(desc, nomb)
    @tag = Tag.new
    @tag.NOMBRE = nomb
    @tag.DESCRIPCION = desc
    @tag.save
  end

  def dar_tags
    Tag.select('DISTINCT NOMBRE ORDER BY NOMBRE')
  end

  def dar_fuentes_de_tag(tag)
    @id = Tag.select('id').where('NOMBRE = ?', tag)

    @r = TagPuente.select('fuente_bibliograficas.*')
        .joins('fuente_bibliograficas on tag_puentes.ID_FUENTE = fuente_bibliograficas.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('fuente_bibliograficas.AUTOR ASC')
    return @r
  end

  def dar_archivos_de_tag(tag)
    @id = Tag.select('id').where('NOMBRE = ?', tag)

    @r = TagPuente.select('archivos.*')
        .joins('archivos on tag_puentes.ID_ARCHIVO = archivos.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('archivos.NOMBRE ASC')
    return @r
  end

  def dar_reuniones_de_tag(tag)
    @id = Tag.select('id').where('NOMBRE = ?', tag)

    @r = TagPuente.select('reuniones.*')
        .joins('reuniones on tag_puentes.ID_REUNION = reuniones.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('reuniones.FECHA ASC')
    return @r
  end

  def dar_temas_de_tag(tag)
    @id = Tag.select('id').where('NOMBRE = ?', tag)

    @r = TagPuente.select('temas.*')
        .joins('temas on tag_puentes.ID_TEMA = temas.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('temas.NOMBRE ASC')
    return @r
  end

  def dar_compromisos_de_tag(tag)
    @id = Tag.select('id').where('NOMBRE = ?', tag)

    @r = TagPuente.select('compromisos.*')
        .joins('compromisos on tag_puentes.ID_REUNION = compromisos.id')
        .where('tag_puentes.ID_TAG = ?', @id)
        .order('compromisos.TITULO ASC')
    return @r
  end

  def asignar_tag_fuente(id, nombre_tag)
    @t = Tag.select('*').where('NOMBRE = ?', nombre_tag)
    @tp = TagPuente.new
    @tp.ID_TAG = @t.id
    @tp.ID_FUENTE = id
  end

  def asignar_tag_tema(id, nombre_tag)
    @t = Tag.select('*').where('NOMBRE = ?', nombre_tag)
    @tp = TagPuente.new
    @tp.ID_TAG = @t.id
    @tp.ID_TEMA = id
  end

  def asignar_tag_reunion(id, nombre_tag)
    @t = Tag.select('*').where('NOMBRE = ?', nombre_tag)
    @tp = TagPuente.new
    @tp.ID_TAG = @t.id
    @tp.ID_REUNION = id
  end

  def asignar_tag_archivo(id, nombre_tag)
    @t = Tag.select('*').where('NOMBRE = ?', nombre_tag)
    @tp = TagPuente.new
    @tp.ID_TAG = @t.id
    @tp.ID_ARCHIVO = id
  end

  def asignar_tag_compromiso(id, nombre_tag)
    @t = Tag.select('*').where('NOMBRE = ?', nombre_tag)
    @tp = TagPuente.new
    @tp.ID_TAG = @t.id
    @tp.ID_COMPROMISO = id
  end

end

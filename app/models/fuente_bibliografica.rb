class FuenteBibliografica < ActiveRecord::Base
  attr_accessible :AUTOR, :ESTUDIANTES_ID, :FECHA_BIBLIOGRAFIA, :FECHA_LECTURA, :id, :LIBRO, :RESUMEN, :TESIS_ID, :URL, :TEMAS_ID


  def assign_theme(id,theme_id)
      @fuente=FuenteBibliografica.select('*').where('id = ?',id)
      @fuente.TEMAS_ID = theme_id
  end

end

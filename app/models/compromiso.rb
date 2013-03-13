class Compromiso < ActiveRecord::Base
  attr_accessible :FECHA_CIERRE, :FECHA_COMPROMETIDA, :FECHA_CREACION, :id, :ROL, :TESIS_ID, :TITULO, :CONTENIDO

  def compromisos_con_estudiantes
    Compromiso.select('estudiantes.PRIMER_NOMBRE, estudiantes.PRIMER_APELLIDO, compromisos.*')
    .joins('join tesis on compromisos.TESIS_ID = tesis.id
            join tesis_estudiantes on tesis.id = tesis_estudiantes.TESIS_ID
            join estudiantes on tesis_estudiantes.ESTUDIANTE_ID = estudiantes.id')
    .where('(CURDATE() < compromisos.FECHA_COMPROMETIDA)')
  end

  def consultar_compromisos_estudiante(codigo)
    Compromiso.select('compromisos.*')
    .joins('join tesis on compromisos.TESIS_ID = tesis.id
            join tesis_estudiantes on tesis.id = tesis_estudiantes.TESIS_ID
            join estudiantes on tesis_estudiantes.ESTUDIANTE_ID = estudiantes.id')
    .where('estudiantes.CODIGO = ?', codigo)
  end

end

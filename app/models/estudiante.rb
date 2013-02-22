class Estudiante < ActiveRecord::Base
  attr_accessible :CODIGO, :ID, :PRIMER_APELLIDO, :PRIMER_NOMBRE, :SEGUNDO_APELLIDO, :SEGUNDO_NOMBRE
end

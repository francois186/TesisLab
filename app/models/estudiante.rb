class Estudiante < ActiveRecord::Base
  attr_accessible :CODIGO, :id, :PRIMER_APELLIDO, :PRIMER_NOMBRE, :SEGUNDO_APELLIDO, :SEGUNDO_NOMBRE, :USUARIO
end

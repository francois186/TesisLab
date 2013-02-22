class Profesor < ActiveRecord::Base
  attr_accessible :ID, :PRIMER_APELLIDO, :PRIMER_NOMBRE, :SEGUNDO_APELLIDO, :SEGUNDO_NOMBRE
end

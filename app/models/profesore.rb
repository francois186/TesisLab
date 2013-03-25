class Profesore < ActiveRecord::Base
  attr_accessible :id, :PRIMER_APELLIDO, :PRIMER_NOMBRE, :SEGUNDO_APELLIDO, :SEGUNDO_NOMBRE, :USUARIO
end

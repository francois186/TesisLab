class CompromisosController < ApplicationController
  def list
    @lista = Compromiso.new.compromisos_con_estudiantes
  end
end

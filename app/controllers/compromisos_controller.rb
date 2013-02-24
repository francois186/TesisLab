class CompromisosController < ApplicationController
  def list
    @lista = Compromiso.new.compromisos_con_estudiantes
    puts @lista
  end
end

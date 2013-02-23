class CompromisosController < ApplicationController
  def list
    @lista = Compromiso.all
  end
end

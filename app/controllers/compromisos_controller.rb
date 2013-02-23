class CompromisosController < ApplicationController
  def list
    @todos = Compromiso.all
  end
end

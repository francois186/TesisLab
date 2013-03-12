class ReunioneController < ApplicationController

  def list
    @reuniones = Reunione.all
  end
end

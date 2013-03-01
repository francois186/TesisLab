class EntregableController < ApplicationController
  def list
    @entregables = Entregable.all
  end
end

class TesisController < ApplicationController

  def show
    @tesises= Tesi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tesises }
    end
    end
end

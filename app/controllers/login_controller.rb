class LoginController < ApplicationController

  def login

    begin
    @profesor = Profesore.find_by_USUARIO(params[:username])

    @estudiante = Estudiante.find_by_USUARIO(params[:username])

    if(@estudiante!=nil&&@estudiante.USUARIO==params[:username])
      session[:user_id] = @estudiante.id
      session[:user_rol] = 2
      redirect_to '/index_estudiantes'
    elsif(@profesor!=nil&&@profesor.USUARIO==params[:username])
      session[:user_id] = @profesor.id
      session[:user_rol] = 1
      redirect_to '/profesores'

    else
      redirect_to '/login'
    end
    rescue
      redirect_to '/login'
    end

  end

  def bienvenidae
    @nombre = params[:username]
  end


end

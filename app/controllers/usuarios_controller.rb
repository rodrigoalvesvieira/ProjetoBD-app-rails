class UsuariosController < ApplicationController
  def index
  end

  def show
  end

  def new
      @usuario = Usuario.new
  end
  
  def create
      puts "rav2 eh foda #{user_params}"
      puts params
  end

  def update
  end
  
  def user_params
      params.require(:usuario).permit(:login, :password)
    end
end

class UsuariosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @usuarios = Usuario.all
    @usuario = Usuario.new
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @usuario = Usuario.new
  end
  
  def create
    p user_params
    
    @usuario = Usuario.new(user_params)
    user = User.create(user_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to dashboard_usuario_url(@usuario), notice: 'usuario was successfully created.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end
  
  def destroy
  end
  
  def user_params
    params.require(:usuario).permit(:login, :email, :admin, :password)
  end
end

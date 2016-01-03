class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Asumo que params[:user] es el formulario
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "Usd. ingresó correctamente."
      flash[:color] = "valid"
    else
      flash[:notice] = "Usd. no pudo ingresar ."
      flash[:color] = "invalid"
    end
    # Renderiza la vista new
    render "new"
  end
end

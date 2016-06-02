class PassResetsController < ApplicationController
	before_action :get_user,   only: [:edit, :update]
  	before_action :valid_user, only: [:edit, :update]


	def new
	end

	def create
	  @user = User.find_by(email: params[:pass_reset][:email].downcase)
	  if @user
	  	if @user.activated?
	  		@user.create_reset_digest
		    @user.send_password_reset_email
		    #redirect_to controller: 'users', action: 'edit', id: @user.id
		    redirect_to controller: 'pass_resets', action: 'answer', user: @user.id
		    #UserMailer.pass_reset(@user).deliver_now
	  	else
	  		message  = "Cuenta bloqueada. "
	        message += "Por favor solicite por mail la reactivacion de su cuenta"
	        flash[:notice] = message
	        redirect_to root_url
	  	end
	  else
	    flash[:notice] = "Email no registrado"
	    redirect_to root_url
	  end
	end

	def edit
	end

	def update
	    if params[:user][:password].empty?
	      @user.errors.add(:password, "no puede estar vacía")
	      render 'edit'
	    elsif @user.update_attributes(user_params)
	      log_in @user
	      flash[:success] = "Password has been reset."
	      redirect_to @user
	    else
	      render 'edit'
	    end
	end

	def answer
	end

	def verify
		@user = User.find_by(email: params[:email].downcase)
		@answer = params[:pass_reset][:answer]
		@password = params[:pass_reset][:password]
		if @password!= params[:pass_reset][:password_confirmation]
			flash[:notice] = "Contraseñas no coinciden"
			redirect_to controller: 'pass_resets', action: 'answer', user: @user.id
		else
			if @user.answer == @answer
				if @password.length < 6
					flash[:notice] = "Largo de contraseña debe ser mayor a 6 caracteres"
					redirect_to controller: 'pass_resets', action: 'answer', user: @user.id
				else
					@user.update(password: @password)
					flash[:notice] = "Contraseña cambiada con éxito"
					redirect_to root_url
				end
				
			else
				flash[:notice] = "Respuesta secreta incorrecta"
				redirect_to controller: 'pass_resets', action: 'answer', user: @user.id
			end
		end
	end

	private

	def user_params
	 	params.require(:user).permit(:password, :password_confirmation)
    end

    def get_user
      @user = User.find_by(email: params[:email])
    end

    def valid_user
      unless (@user && @user.activated? &&
              @user.authenticated?(:reset, params[:id]))
        redirect_to root_url
      end
    end

end

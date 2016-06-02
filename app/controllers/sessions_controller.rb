  class SessionsController < ApplicationController
  def new
  end
  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        if( !user.nil?)
          if (user.admin == 1)
            redirect_to admin_path
          else
           redirect_to user

          end
        else
          redirect_to admin_path
        end
      else
        message  = "Cuenta bloqueada. "
        message += "Por favor solicite por mail la reactivacion de su cuenta"
        flash[:notice] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end

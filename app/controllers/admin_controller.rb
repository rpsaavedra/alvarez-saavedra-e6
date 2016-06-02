class AdminController < ApplicationController

	before_action :es_admin?,  :except =>[:index]

	def es_admin?
		if !logged_in?
			
		else
			if !(@current_user.admin == 1)
				
				redirect_to root_path
			end
		end
		
	end  

  def index
  		if !logged_in?
			
		else
			if !(@current_user.admin == 1)
				
				log_out
				redirect_to admin_path
			else
				redirect_to "/admin/usuarios"
			end
		end

  end

  def usuarios
  	if !logged_in?
		redirect_to root_url	
	else
		if !(@current_user.admin == 1)
			
			redirect_to root_url
		else
			
		end
	end
  end


end

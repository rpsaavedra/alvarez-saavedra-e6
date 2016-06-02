class UserMailer < ApplicationMailer
  default from: 'asproyectoweb@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.pass_reset.subject
  #
  def pass_reset(user)
  	@user = user
    mail(to: user.email, subject: "Recupera tu contraseña")
  end
end

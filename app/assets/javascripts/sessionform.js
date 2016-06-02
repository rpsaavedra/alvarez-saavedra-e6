var miform = document.getElementById('session_form');
var email_field = document.getElementById('email_form');
var password_field = document.getElementById('password_form');
$(function(){

	if (miform){
		
		miform.onclick = function(){
			contexto = ''
			if(email_field.value == null || email_field.value == ''){
				contexto += 'Debe ingresar Email\n'
			}

			else if(email_field.value.indexOf('@') == -1){
				contexto += 'Email debe tener @\n'
			}
			
			if(password_field.value == null || password_field.value == ''){
				contexto += 'Debe ingresar Contraseña'
			}
			if (contexto != ''){
				alert(contexto)
				return false;
			}

		};
	}
});


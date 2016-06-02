var miform = document.getElementById('user_form');
var email_field = document.getElementById('email_form');
var name_field = document.getElementById('name_form');
var password_field = document.getElementById('password_form');
var question_field = document.getElementById('question_form');
var answer_field = document.getElementById('answer_form');
$(function(){
	console.log('venga')
	console.log(miform)
	if (miform){
		
		miform.onclick = function(){
			contexto = ''
			if(name_field.value == null || name_field.value == ''){
				contexto += 'Debe ingresar Nombre\n'
			}
			if(email_field.value == null || email_field.value == ''){
				contexto += 'Debe ingresar un Email\n'
			}
			else if(email_field.value.indexOf('@') == -1){
				contexto += 'Email debe tener un @\n'
			}
			if(password_field.value == null || password_field.value == ''){
				contexto += 'Debe ingresar Contraseña\n'
			}
			else if(password_field.value.length < 6){
				contexto += 'Contraseña debe contener al menos 6 caracteres\n'
			}
			
			if(question_field.value == null || question_field.value == ''){
				contexto += 'Debe ingresar una pregunta secreta\n'
			}
			if(answer_field.value == null || answer_field.value == ''){
				contexto += 'Debe ingresar su respuesta secreta'
			}

			if (contexto != ''){
				alert(contexto)
				return false;
			}

		};
	}
});


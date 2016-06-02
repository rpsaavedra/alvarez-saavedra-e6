var miform = document.getElementById('article_form');
var price_field = document.getElementById('price_form');
var name_field = document.getElementById('name_form');
var kind_field = document.getElementById('kind_form');
var stock_field = document.getElementById('stock_form');
$(function(){
	if (miform){
		
		miform.onclick = function(){
			contexto = ''
			if(name_field.value == null || name_field.value == ''){
				contexto += 'Debe ingresar Nombre\n'
			}
			if(price_field.value == null || price_field.value == ''){
				contexto += 'Debe ingresar un Precio\n'
			}
			else if(isNaN(parseFloat(price_field.value))){
				contexto += 'Precio debe ser un número\n'
			}
			
			if(stock_field.value == null || stock_field.value == ''){
				contexto += 'Debe ingresar stock disponible\n'
			}

			if (contexto != ''){
				alert(contexto)
				return false;
			}

		};
	}
});


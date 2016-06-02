/*var mis_imagenes = document.getElementsByClassName('img-cata');
var ventana = document.getElementById('product-window');
var span = document.getElementsByClassName("close")[0];
var contenido = document.getElementsByClassName("product-content")[0].getElementsByTagName("P")[0];
var imagen = document.getElementsByClassName("product-content")[0].getElementsByTagName("Img")[0];
var precio = document.getElementsByClassName("product-data")[0].getElementsByTagName("H3")[0];
var descripcion = document.getElementsByClassName("product-data")[0].getElementsByTagName("P")[0];
$(function(){
	if (mis_imagenes && ventana && span && contenido){	
		for (var i = 0; i < mis_imagenes.length; i++){
			var product = mis_imagenes[0].getAttribute("data-name");
			var product_cost = mis_imagenes[0].getAttribute("data-price");
			var product_desc = mis_imagenes[0].getAttribute("data-description");
			var preview = mis_imagenes[0].getAttribute("src");

			mis_imagenes[i].onclick = function(){
				ventana.style.display = "block";
				contenido.innerHTML = this.getAttribute("data-name");
				imagen.src = this.getAttribute("src");
				if (precio.innerHTML.indexOf('$') == -1){
					precio.innerHTML += '$' + this.getAttribute("data-price");
				}
				if (this.getAttribute("data-description") == "null"){
					descripcion.innerHTML  = "Información del producto no disponible";
				}
				else{
					descripcion.innerHTML = this.getAttribute("data-description");
				}
				
			};
		}
		span.onclick = function(){
			ventana.style.display = "none";
			precio.innerHTML = "Precio: ";
		};
		window.onclick = function(event) {
		    if (event.target == ventana) {
		        ventana.style.display = "none";
		        precio.innerHTML = "Precio: ";
		    }
		};
	}
});
*/

 
  	var actual= 0;
 	var gap = 2;
 	var max=0;
 	var contexto="";
 	var $ventana = null;
 	var $ventanita = null;

 $(function(){

 	if( $('#tipox').text() == "Shampoos"){


 	var $contenedor = $('#container');
 	var $prev = $('#prev');
 	var $next = $('#next');
 	$prev.unbind( "click" );
 	$next.unbind( "click" );

 	$next.on('click', function(ev){
		ev.preventDefault();
		$("#content-2").empty();
	
		if((actual+gap)>=max){
			actual=max-gap;
		}
		else{
			actual= actual+gap;
		}
		construir();

	});

	$( "input:radio[name=tab-group]" ).change(function() {
		actual=0;
	  construir();
	});

 	


	$prev.on('click', function(ev){
		ev.preventDefault();
		var numx = $("input:radio[name=tab-group]:checked" ).val() ;
		contexto = "#content-" + numx;

		$(contexto).empty();

		if((actual-gap)<0){
			actual=0;
		}
		else{
			actual= actual-gap;
		}
		construir();

	});

 	var buildProductos = function(prodInfo)  {


		$p = $('<p></p>');
		$p.addClass('prod-cat');

		$a1 = $('<a></a>');
		$a1.attr("href","producto.html");

		$img = $('<img></img>');
		$img.addClass('img-cata');
		$img.attr("src", prodInfo.image);
		$img.attr("data-name", prodInfo.name);
		$img.attr("data-price", prodInfo.price);
		$img.attr("data-description", prodInfo.description);

		$img.on('click', function(){
			if (!$ventana){
				var p = "";
				console.log($(this).data("description"));
				if (!$(this).data("description") || $(this).data("description") == ""){
					p = "Información del producto no disponible";
				}
				else{
					p = $(this).data("description");
				}
				$ventana = $('<div id = "product-window"><div class = "product-content"><span id="close">x</span><p id = "name-par">'+ $(this).data("name") +'</p><img class ="preview" src="'+ $(this).attr("src") +'"/><div class = "product-data"><h3 id= "price-par">Precio: $'+ $(this).data("price") +'</h3><p id= "desc-par">'+ p +'</p><div class= "shop-btn"><div class = "see-prod"><label id="details-btn" class="window-label">Ver producto</label></div><div class= "shop-cart"><img class ="shop" src="/assets/ecarrito-8fddd8fab42f549ed0b658a03b8fa762283bc1dc36d87d252d65a3b6351a7719.png" alt="Ecarrito"></img><label class="shop-label">Agregar al carrito</label></div></div></div></div></div>');
				//$ventanita = $('#product-window');
				$contenedor.append($ventana);
				$span = $('#close');
 				$span.unbind( "click" );
 				$span.on('click', function(){
					$ventana.hide();
				});	
				$ventana.show();
			}
			else{
				var $nombre = $("#name-par");
				var $imagen = $(".preview");
				var $precio = $("#price-par");
				var $desc = $("#desc-par");
				$nombre.html($(this).data("name"));
				$imagen.attr("src", $(this).attr("src"));
				$precio.html("Precio: $" + $(this).data("price"));
				if (!$(this).data("description") || $(this).data("description") == ""){
					$desc.html("Información del producto no disponible");
				}
				else{
					$desc.html($(this).data("description"));
				}
				
				$ventana.show();
			}
			return false;
		});

		$a1.append($img);
		$p.append($a1);

		$a2 = $('<a></a>');
		$a2.attr("href","producto.html");
		$a2.addClass("img-label");
		$a2.html(prodInfo.name);
		
		$p.append($a2);

		$(contexto).append($p)


		/*window.onclick = function(event) {
		    if (event.target == $ventanita) {
		        $ventana.hide();
		    }
		};*/
		// body...
	};




		var numerar =function(numero){
		$('#numerito').empty();
		var cant=0;
	
		if(numero%gap!=0){
		 	cant=numero/gap +1;
		}
		else{
			cant = numero/gap;
		}
		
		for(var i =1; i<=cant; i++){
			$numero = $('<a class="num_page" data-numero='+i+' href="#"> '+i+' </a>');
			$('#numerito').append($numero);
			$numero.on("click", function(ev){
				ev.preventDefault();
				string=$(this).text();
				index=parseInt(string);
			
				actual=((index-1)*gap);
				construir();
				

			});
		}


	};





	var construir = function(){		
		var numx = $("input:radio[name=tab-group]:checked" ).val() ;
		contexto = "#content-" + numx;
		var urlx="";

		if(numx == "1"){
			urlx="/aresponse/h&h";
		}
		else if(numx == "2"){
			urlx="/aresponse/sedal"
		}
		else {
			urlx ="/aresponse/pantene";
		}
		
	 	$.ajax({
				"url": urlx,
				"success": function(data, ts, jq){
					$(contexto).empty();
					//console.log("success", data, ts, jq);
					console.log("succes", data);
					console.log(data.productos[0]);
					var last=0;
					max= data.productos.length;

					if((actual+gap) > data.productos.length){
						last= data.productos.length;
					}
					else{
						last=actual+gap;
					}

					for (var i=actual; i<last; i++) {
						if(contexto=="#content-1"){
							if(data.productos[i].kind == "shampoo!!h&h")
							{
								buildProductos(data.productos[i]);
							}
	 					}

	 					else if(contexto=="#content-2"){
							if(data.productos[i].kind == "shampoo!!sedal")
							{
								buildProductos(data.productos[i]);
							}
	 					}

	 					else if(contexto=="#content-3"){
							if(data.productos[i].kind == "shampoo!!pantene")
							{
								buildProductos(data.productos[i]);
							}
	 					}

					    
					}
					numerar(data.productos.length);

					
					//buildCardInfo(data);
				},
				"error": function(jq, st, er) {
					//console.log("ERROR",  jq, st, er);
				}
			});

	 };



 construir();

}

});








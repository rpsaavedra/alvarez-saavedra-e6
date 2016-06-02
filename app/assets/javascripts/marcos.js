 
  	var actual= 0;
 	var gap = 2;
 	var max=0;
 	 var contexto="";


 $(function(){
 	
 	if( $('#tipox').text() == "Cuadros"){





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

		$a1.append($img);
		$p.append($a1);

		$a2 = $('<a></a>');
		$a2.attr("href","producto.html");
		$a2.addClass("img-label");
		$a2.html(prodInfo.name);
		
		$p.append($a2);

		$(contexto).append($p)

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
	 	$.ajax({
				"url": "/aresponse/cuadro",
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

							if(data.productos[i].kind == "cuadro")
							{
								
								buildProductos(data.productos[i]);
							}
	 					}

	 					else if(contexto=="#content-2"){
							if(data.productos[i].kind == "cuadro")
							{
								buildProductos(data.productos[i]);
							}
	 					}

	 					else if(contexto=="#content-3"){
							if(data.productos[i].kind == "cuadro")
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








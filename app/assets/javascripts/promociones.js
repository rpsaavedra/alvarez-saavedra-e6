 
  	var actual= 0;
 	var gap = 2;
 	var max=0;
 	var contexto="";


 $(function(){

 	if( $('#tipox').text() == "Promociones"){
 		




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
		var urlx="/presponse";


		
	 	$.ajax({
				"url": urlx,
				"success": function(data, ts, jq){
				
					$(contexto).empty();
					//console.log("success", data, ts, jq);
					console.log("succes", data);
					console.log(data.promociones[0]);
					var last=0;
					max= data.promociones.length;

					if((actual+gap) > data.promociones.length){
						last= data.promociones.length;
					}
					else{
						last=actual+gap;
					}

					for (var i=actual; i<last; i++) {
						buildProductos(data.promociones[i]);
					    
					}
					numerar(data.promociones.length);


					
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








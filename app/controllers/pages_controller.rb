class PagesController < ApplicationController

  def home

  end


  def marcos
    puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  end


  def proms




    total = Prom.count


    i=0
    arreglo = Array.new

    Prom.all.each do |promo|
      image = promo.image
      name= promo.name
      price= promo.price
      description = promo.description
      stock= promo.stock
      url= promo.url
      valido = promo.valido
      result = {:image => image, :name => name, :price => price, :description => description, :stock => stock, :url => url, :valido => valido}
      arreglo.push(result)
    end
    response = {:promociones => arreglo}
    render:json => response
  end




  def productos
    tipo= params[:id]

        total = Article.count
    i=0
    arreglo = Array.new

    Article.where( "kind like ?", "%#{params[:id]}%").each do |prod|
      image = prod.image
      name= prod.name
      price= prod.price
      description = prod.description
      url = prod.url
      kind = prod.kind
      result = {:image =>image , :name =>name, :price => price, :description=>description, :url => url, :kind => kind }
      arreglo.push(result)
    end

    response = { :productos =>  arreglo  }
    render:json =>  response
  end


  def login
  end

  def signup
  end

  def promociones
  
  	Offer.all.each do |off|

  	end

  
  end
  
end

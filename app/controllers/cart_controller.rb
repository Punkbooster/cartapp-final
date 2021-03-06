class CartController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def add
  	id = params[:id]
  	# if the cart has already been created, use existing cart. Else create a new one.
  	if session[:cart] then
  		cart = session[:cart]
  	else
  		session[:cart] = {}
  		cart = session[:cart]
  	end

  	#if the product has already been added to the cart, increment the value by 1. Else set value to 1
  	if cart[id] then
  		cart[id] = cart[id] + 1
  	else
  		cart[id] = 1
  	end
  redirect_to :action => :index	
  end

  def clearCart
  	session[:cart] = nil
  	redirect_to :action => :index
  end

  def index
  	# if there is a cart, pass it to the page to display a cart. Else pass an empty value
  	if session[:cart] then
  		@cart = session[:cart]
  	else
  		@cart = {}
  	end
  end
end
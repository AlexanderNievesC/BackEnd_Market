class ProductsController < ApplicationController
  def index 
    products = Product.all
    render json: products
  end


  def search
    if params[:query].blank?
      products = Product.all
      render json: products
    else 
      query = params[:query].downcase
      results = Product.all.where("lower(name) LIKE :query",query: "%#{query}%")
      render json: results
    end
  end
end

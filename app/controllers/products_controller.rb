# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :load_cart

  def index
    @products = Product.order(:name).page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    if params[:dropdown] == '0'
      @products = Product.where('name LIKE ?', "%#{params[:name]}%").page params[:page]
    else
      @category = Category.find_by(name: params[:dropdown])
      @products = @category.products.where('name LIKE ?', "%#{params[:name]}%").page params[:page]
    end
  end

  def about; end

  def add_to_cart
    id = params[:id].to_i

    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end
end

# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    # @categories = Category.order(:name)
  end

  def show
    @category = Category.find(params[:id])
  end

  # def dropdown
  #   @categories = Category.all
  # end
end

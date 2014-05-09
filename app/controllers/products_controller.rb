#require 'will_paginate/array'
require 'kaminari'

class ProductsController < ApplicationController
before_filter :authenticate_user!, only: [:new, :edit, :create]

	def index
		if !params[:search].nil?
			@products = Product.search(params[:search])
			@suggestion = Suggestion.new(name: params[:search])
		else
			@products = Product.all
		end
	end

	def show
		@product = Product.find(params[:id])
		@supermarkets=@product.supermarkets.distinct
		@pricemeasures=@product.pricemeasures
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.create(product_params)
		@product.save

		if @product.save		
			redirect_to products_path
		else
			render 'new'
		end
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def product_params
	  params.require(:product).permit(:name, :image, :bar_code)
	end
end
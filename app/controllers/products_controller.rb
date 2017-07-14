class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params['id'])
    respond_to do |format|
      format.js { render 'show.js.erb' }
    end
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html
        format.js {redirect_to products_path, notice: 'Item was successfully added.'}
      else
        format.html { redirect_to products_path , notice: "You must fill in ALL fields"}
      end
    end
  end

  def edit
    @product = Product.find(params['id'])
  end

  def update
    @product = Product.find(params['id'])
    respond_to do |format|
      if @product.update(product_params)
        format.html
        format.js { redirect_to products_path, notice: 'Item was successfully edited.' }
      else
        format.html { redirect_to products_path, notice: 'Oooooops' }
      end
    end
  end

  def destroy
    @product = Product.find(params['id'])
    @product.destroy
    respond_to do |format|
      format.html
      format.js { redirect_to products_path, notice: 'Item was successfully deleted.' }
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end

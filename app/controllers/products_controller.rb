class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "#{@product.name} has been added!"
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update!(product_params)
      flash[:notice] = "#{@product.name} was updated!"
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
   @product = Product.find(params[:id])
   @product.destroy
   flash[:notice] = "#{@product.name} was removed!"
   redirect_to products_path
 end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end

class AvailableProductsController < ApplicationController
  before_action :set_available_product, only: [:show, :edit, :update, :destroy]

  def index
    @available_products = AvailableProduct.all
  end

  def show
  end

  def new
    @available_product = AvailableProduct.new
    respond_to do |format|
      format.js {
        render 'new'
      }
    end
  end

  def edit
    respond_to do |format|
      format.js {
        render 'edit'
      }
    end
  end

  def create
    @errors = {}
    params = available_product_params

    product = Product.find(params[:product][:id])
    color = Color.find(params[:color][:id])
    size = Size.find(params[:size][:id])

    puts '********************************************'
    puts product.inspect
    puts color.inspect
    puts size.inspect

    params[:product_id] = product ? product.id : nil
    params.delete(:product)

    params[:color_id] = color ? color.id : nil
    params.delete(:color)

    params[:size_id] = size ? size.id : nil
    params.delete(:size)

    @available_product = AvailableProduct.new(params)
    
    respond_to do |format|
      format.js {
        if @available_product.save
          flash[:success] = 'Register was create successfully!!'
        else
          @errors[:alert] = @available_product.errors.full_messages
        end
      }
    end
  end

  def update
    @errors = {}
    params = available_product_params
    res = @available_product.update(params)
    respond_to do |format|
      format.js {
        if res && @available_product.errors.blank?
          flash[:success] = 'Register was uploaded successfully!!'
        else
          @errors[:alert] = @available_product.errors.full_messages
        end
      }
    end
  end

  def destroy
    @errors = {}
    res = @available_product.destroy
    respond_to do |format|
      format.js {
        if res && @available_product.errors.blank?
          flash[:success] = 'Register successfully destroyed!!'
        else
          @errors[:alert] = @available_product.errors.full_messages
        end
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_product
      @available_product = AvailableProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_product_params
      params.require(:available_product).permit(:product_id, :color_id, :size_id, :quantity, 
                                                product: [:name, :id], color: [:name, :id],
                                                size: [:name, :id])
    end
end

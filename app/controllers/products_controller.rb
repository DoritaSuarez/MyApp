class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
            if @product.save
                redirect_to products_path # Helper, cosas que vienen pre-definidas en rails
            else
                render:new
            end
    end
    
    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to products_path
        else
            render :edit
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

    private
        def product_params
            params.require(:product).permit(:name, :description, :price) # Metodos privados a los que no tiene acceso la aplicacion, solo se va a tener acceso aqui adentro
        end
end

class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
    
    def show
        @customer = Customer.find(params[:id])
    end
    
    def new 
        @customer = Customer.new
    end
    
    def create
        @customer = Customer.new(article_params)
        
        if @customer.save
            redirect_to @customer
        else
            render 'new'
        end
    end
    
    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
        
        redirect_to customers_path
    end
end

private
    def customer_params
        params.require(:customer).permit(:name, :phone, :email)
    end
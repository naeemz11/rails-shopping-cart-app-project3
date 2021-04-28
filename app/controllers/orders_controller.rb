class OrdersController < ApplicationController

    def new
        @order= Order.new
      end
      
    def create 
        @order= Order.new(order_params)
        # @order.address = params[:order][:address]
        # @order.item = params[:order][:item]
        # @order.quantity= params[:order][:quantity]
        # @order.price = params[:order][:price]
        if @order.save
          redirect_to order_path(@order)
    
          # redirect_to orders_path(@order)
          # redirect_to orders_new_path(@order)
        else 
          #error message
          #if it doenst save @order.error
          
          render :new
        end
    end 
    
    
    def index
        @orders= Order.all
          
        
    end
    
    def edit
        @order= Order.find_by(id: arams[:id])
        
    end
    
    def update 
        @order= Order.find_by(id: params[:id])
        @order.update(order_params)
    
        if @order.valid?
          redirect_to orders_path(@order)
        else
          #show error 
          render :edit 
        end 
    end 
    
        def destroy 
          @order = Order.find_by(id: params[:id])
          @order.destroy
          redirect_to orders_path
        end 
    
    
    def show
        @order= Order.find_by(id: params[:id])
    end
    
    
    private 
    
    def order_params
    
      params.require(:order).permit(:address, :item, :quantity, :price)
    
    end
    
end

class SalesController < ApplicationController

    def index
        @sale = Sale.all
    end

    def show
        @sale = Sale.find(id)
    end
    

    private

    def sales_params
        params.require(:sale).permit(
            :customer_id,
            items_sale_attributes: [:id, :item_id, :quantity,un_price]
            )
    end
    
    
end

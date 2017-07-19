class PortfolisController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
	layout 'portfolio'
	access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
	
	def index
		@portfolio_items = Portfolio.order("position ASC")
	end
	
	def sort
		params[:order].each do |key, balue|
		Portfolio.find(value[:id])
	end
	end

	def index
		@portfolio_items =Portfolio.all
	end

	def angular
		@angular_portfolio_items =Portfolio.angular
	end

	def update
		@portfolio_items= Portfolio.find(parmas{:id})
	end

	def create 
	@portfolio_items = Portfolio.new(parmas.require(:portfolio).permit(:title, :subtitle, :body))

		respond_to do |format|
			if @portfolio_items.update()
				format.html { redirect_to portfolio_path, notice: 'The record successfully updated.' }
			else
				format.html {render :edit}
			end
		end
	end

def show
	@portfolio_items = Portfolio.find(parmas{:id})


	@portfolio_items.destroy
	
	respond_to do |format|
		format.html { redirect_to portfolios_url, notice: 'Record was removed.'}
	end
end

private
 params.require(:portfolio).permit(:title,
	 								 :subtitle,
	   								 :body, 
	  								 technologies_attributes: [:name]
	  								 )

end

main_image "http://via.placeholder.com/600x400",
	thumb_image: "http://via.placeholder.com/350x200" 
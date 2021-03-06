class PortfoliosController < ApplicationController
  access all: [:show, :index, :angular], user: {except: [:destroy, :new , :create , :edit, :update]}, site_admin: :all

  layout "portfolio"

	def index
		@portfolio_items = Portfolio.order(:created_at).page(params[:page])

    @page_title ="My porttfolio website" 
	end

  def angular
    @angular_portfolio_item = Portfolio.angular
  end 

	def new
		@portfolio_item = Portfolio.new

    3.times { @portfolio_item.technologies.build }
	end 

	def create 
		@portfolio_item = Portfolio.new(portfolio_params)

    	respond_to do |format|
      	if @portfolio_item.save
        	format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
      	else
        	format.html { render :new }
      	end
    	end 
	end 

	def edit
		@portfolio_item = Portfolio.find(params[:id])

    3.times { @portfolio_item.technologies.build }
	end

	def update
		@portfolio_item = Portfolio.find(params[:id])
		respond_to do |format|
      		if @portfolio_item.update(portfolio_params)
        		format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
      		else
       		 	format.html { render :edit } 
      		end 
    	end
	end

	def show
		@portfolio_item = Portfolio.find(params[:id])
	end

  def destroy
  	#perform the lookup 
  	@portfolio_item = Portfolio.find(params[:id])

  	#Destry/delete the record
    @portfolio_item.destroy 

    #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully destroyed.' }
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body , 
                                      :thumb_image,
                                      :main_image,
                                      technologies_attributes: [:name])
  end 
end

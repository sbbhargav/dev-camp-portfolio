class PortfoliosController < ApplicationController

  layout 'portfolio'

  before_action :set_portfolio_item , only: [:edit,:update,:show,:destroy]

  access all: [:show, :index,:angular], user: {except: [:destroy,:new,:create,:update,:edit]}, site_admin: :all

	def index
		@portfolio_items = Portfolio.all
	end
  def angular
    @portfolio_items = Portfolio.angular
  end

	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build}
	end
	def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "portfolio was successfully created." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end
	def edit
		
    
	end
	def update
		
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Blog was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
        
      end
    end
  end
	def show
		
	end
	def destroy
		@portfolio_item = Portfolio.find(params[:id])
    
		@portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Blog was successfully destroyed." }
    end
  end
  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end
  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
end

class PagesController < ApplicationController
  def splash
  end

  def home
    respond_to do |format|
      format.html
      format.mobile
  end
  end

  def about
  end

  def contact
      def new
    # id is required to deal with form
    @support = Support.new(:id => 1)
      end
 
  def create
    @support = Support.new(params[:support])
    if @support.save
      redirect_to('/', :notice => "Support was successfully sent.")
    else
      flash[:alert] = "You must fill all fields."
      render 'new'
    end
  end
  end

  def products
  end

  def shoppingbag
  end
end

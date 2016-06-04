class PagesController < ApplicationController
  def index
  	@date = params[:date] if params[:date]
  end

  def show
  end

  def edit
  end

  def new

  end

  def create
  	date = params[:page][:start_date]
  	page = Page.create(:start_date=>date)
  	redirect_to action: 'index', date: date 
  end
end

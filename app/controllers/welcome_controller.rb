class WelcomeController < ApplicationController
  def index
  	
	#search
	if params[:search]
		@photos = Photo.search(params[:search]).order('date DESC')
	else
		@photos = Photo.order('date DESC')
	end

  end
end

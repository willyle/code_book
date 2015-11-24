class SearchesController < ApplicationController
	def new
		@search = Search.new
	end
	def create
		@search = Search.search(params[:q])
	end
	def custom
		@as_qdr = params[:as_qdr]
		@q = params[:q]
		@q = @q.gsub(" ","+")
		@search = Search.create(title: params[:q], note: "No notes yet", user_id: session[:user_id])
		if params[:site]
			@sites = "+site%3A"
			params[:site].each do |site|
				@sites << site << "+OR+"
			end
			@q << @sites
		end
		if params[:q]
			@search_results = Search.search(@q, @as_qdr)
		end
		render :show
	end
	
	def results
	end
	def show
	end
end

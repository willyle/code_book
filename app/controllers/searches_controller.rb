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
		@search = Search.create(title: params[:q], note: "Add note", user_id: session[:user_id])
		@languages = Language.all
		@languages.each do |language|
			if params[:q] =~ /#{language.name}/i
				Tag.create(search_id: @search.id, language_id: language.id)
			end
		end
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
	end
	def results
	end
	def show
		@user = User.find(session[:user_id])
		@search = @user.searches.all.reverse
	end
	def test
		@q =  params[:q]
		@as_qdr = params[:as_qdr]
	end
	def link
		url = params[:url]
		@page = fetch_url url
		
		if !@page
			@message = "We are not able to display the link."
		end
	end
	def fetch_url(url)
  		r = Net::HTTP.get_response(URI.parse(url))
  		if r.is_a? Net::HTTPSuccess
    		r.body.force_encoding("UTF-8")
  		else
    		nil
  		end
	end

	def destroy
		@search = Search.find(params[:search])
		@search.destroy
	end
	def edit
		@search = Search.find(params[:search])
	end
	def updatenote
		@search = Search.find(params[:search_id])
		@search.note = params[:search][:note]
		@search.save
		respond_to do |format|
			format.json {respond_with_bip(@search)}
		end
	end
end

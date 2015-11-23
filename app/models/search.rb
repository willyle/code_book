class Search < ActiveRecord::Base
	belongs_to :user

	has_many :resources
	has_many :links, through: :resources

	has_many :tags
	has_many :lanuages, through: :tags
	def self.search(term)
		key = ENV['GOOGLE_API_KEY']
		cx = ENV['CUSTOM_SEARCH_ENGINE']
		q = term
		url = URI(url = URI("https://www.googleapis.com/customsearch/v1?key=#{key}&cx=#{cx}&q=#{q}"))
		response = JSON.parse(Net::HTTP.get(url))
		puts response
	end
end

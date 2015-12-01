class Search < ActiveRecord::Base
	validates :title,
				 presence: true

	validates :user_id,
				 presence: true
				 
	belongs_to :user

	has_many :resources, dependent: :destroy
	has_many :links, through: :resources

	has_many :tags, dependent: :destroy
	has_many :languages, through: :tags
	def self.search(term,time)
		key = ENV['GOOGLE_API_KEY']
		cx = ENV['CUSTOM_SEARCH_ENGINE']
		q = term
		as_qdr = time
		url = URI(url = URI("https://www.googleapis.com/customsearch/v1?key=#{key}&cx=#{cx}&q=#{q}&as_qdr=#{as_qdr}"))
		response = JSON.parse(Net::HTTP.get(url))
		response
	end
end

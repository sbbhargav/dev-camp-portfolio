module DefaultPageContent
  extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

	
  
	def set_page_defaults
		@page_title = "DevCampPortfolio"
		@seo_keywords = "bhargav vool bjaj"
	end
end
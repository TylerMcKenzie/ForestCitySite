class IndexController < ApplicationController
	def home
		@posts = FacebookApi.get_homepage_details
	end
end

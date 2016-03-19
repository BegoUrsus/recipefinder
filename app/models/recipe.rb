class Recipe
	include HTTParty

	#
	# You will use the http://food2fork.com/api host and port# 
	# (default=:80) during development and Heroku deployment. 
	# However, your assignment will be graded off-line and should 
	# get its host and port# from the FOOD2FORK SERVER AND PORT 
	# environment variable. 
	# Your assignment must use the defined value if present 
	# and default to the real value otherwise.
	#


	# for developement and heroku
	#base_uri 'http://food2fork.com/api'	

	# for grading
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	
	# key_value = ENV['FOOD2FORK_KEY']
	# default_params key: key_value, fields: "title,f2f_url,social_rank,image_url"
	# format :json

	# def self.for (term)
 	# 	get("/search", query: {q: term})["recipes"]
 	# end


	key_value = ENV['FOOD2FORK_KEY']
  	default_params key: key_value
  	format :json

  	def self.for (term)
    	get("/search", query: {q: term})["recipes"]
  	end
end
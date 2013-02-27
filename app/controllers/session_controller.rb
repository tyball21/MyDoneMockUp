class SessionController < ApplicationController

	def new
		@name = session[:name]

	end

	def create
		session[:name] = params[:name]
		@name = Poster.find_by_name(params[:name])

		if @name.present?
			session[:name] = @name.id 
			redirect_to root_url
		else
			redirect_to '/session', :notice => "Please try again!"
			end
		end
		
		# @poster = Poster.find_by_id(params[:name])

		# if @poster.present?
		# 	session[:poster_id] = @poster.poster_id
		# 	redirect_to new_task_url
		# else
		# 	redirect_to 'session/new', :notice => "Sad panda. Try again or sign up ans a new user!"
		# end
		#redirect_to '/session'
	#end

	def goodbye
		reset_session

		redirect_to root_url
	end

end
class SessionController < ApplicationController

	def new

	end

	def create
		@poster = Poster.find_by_id(params[:name])

		if @poster.present?
			session[:poster_id] = @poster.poster_id
			redirect_to new_task_url
		else
			redirect_to 'session/new', :notice => "Sad panda. Try again or sign up ans a new user!"
		end
	end

	def destroy

	end




end
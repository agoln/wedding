class RsvpController < ApplicationController
	def index
		@rsvp = Rsvp.new
	end
	def show
	end

	def create
		@rsvp = Rsvp.new(params[:rsvp])
		@rsvp.save!
	end
end

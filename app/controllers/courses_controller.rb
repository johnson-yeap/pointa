class CoursesController < ApplicationController
	def new
	end

	def create
	end

	def index
	end

	def show
		@course = Course.find(params[:id])
	end

	def edit
	end

	def update
	end
end

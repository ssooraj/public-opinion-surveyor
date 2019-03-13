class PollsController < ApplicationController

	def voter
		@questions = Question.includes(:answers).all
	end

	def save_response
		pp params
		params.each do |param|
			Response.create(question_id: param[0], answer_id: param[1])
		end
		redirect_to thanks_polls_path
	end

	def thanks

	end
end

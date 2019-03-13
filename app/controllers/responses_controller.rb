class ResponsesController < ApplicationController

	def index
		
	end

	def fetch_data
		questions = Question.includes(:responses,:answers).all
		all_responses = []
		questions.each do |question|
			resp = []
			question.answers.each do |c|
				response_count = question.responses.where(answer_id: c.id).count
				resp << [c.answer, response_count]
			end
			response =  { question: question, answer:  resp }
			all_responses << response
		end
		xx =  all_responses.map{ |x| [ x[:question].id, x[:question].question , x[:answer] ] }
		render json: { responses: xx}
	end
end

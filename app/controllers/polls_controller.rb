class PollsController < ApplicationController
    
    def voter
    	@questions = Question.all
    end
end

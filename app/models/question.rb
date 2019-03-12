class Question < ApplicationRecord
	enum question_type: [:radio, :checkbox, :dropdown]

	has_many :answers
end

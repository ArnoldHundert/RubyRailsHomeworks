class Post < ApplicationRecord
	belongs_to(:user)

	# validates(:title,
	#           presence: {message: 'This is a required field.'})
	# validates(:body,
	#           presence: true,
	#           length: {maximum: 140})

end

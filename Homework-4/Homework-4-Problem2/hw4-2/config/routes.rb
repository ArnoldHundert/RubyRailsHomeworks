Rails.application.routes.draw do

	get('contact' => 'contacts#index')
	post('thanks' => 'contacts#thanks')

end


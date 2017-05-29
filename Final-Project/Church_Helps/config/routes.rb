Rails.application.routes.draw do
	devise_for :users, :controllers => {:registrations => "users/registrations"}
	# devise_for :users

	root('welcome#index')
	resources(:users)
	resources(:posts)
end

Rails.application.routes.draw do

  root('homeworks#index')
  resources(:homeworks)

end

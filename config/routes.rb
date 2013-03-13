Hackr::Application.routes.draw do

root :to => 'venues#splash'

resources :venues, :only => [:new,:create]
resources :events, :only => [:new,:create]

end

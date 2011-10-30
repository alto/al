Dummy::Application.routes.draw do
  get '/places/:name'  => 'places#show', :as => 'place'
end

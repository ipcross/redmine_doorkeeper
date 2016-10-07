# -*- encoding : utf-8 -*-
# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

namespace :api do
  namespace :v1 do
    get '/me' => "credentials#me"
  end
end

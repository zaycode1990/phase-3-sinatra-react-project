class UsersController < ApplicationController
    get '/users' do
        user = User.all
        user.to_json(include: :to_dos)
      end
    
      get '/users/:id' do
        user = User.find(params[:id])
        user.to_json(include: :to_dos)
      end
    
end
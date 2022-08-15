class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/users' do
    user = User.all
    user.to_json(include: :to_dos)
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json(include: :to_dos)
  end

  get '/todos/all_tasks' do
    todos = ToDo.all_tasks
    todos.to_json
  end


  post '/todos' do
    user = User.find_or_create_by(name: params[:name])
    todo = ToDo.create(
      user_id: user.id,
      task: params[:task],
      completed: params[:completed]
    )
    todo.to_json
  end

  patch '/todos/:id' do 
  
    todo = ToDo.find(params[:id])
    todo.update(params)
    todo.to_json
   
  end


  delete '/todos/:id' do
    todo = ToDo.find(params[:id])
    todo.destroy
    todo.to_json
  end
  
end

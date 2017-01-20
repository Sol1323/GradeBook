Rails.application.routes.draw do
  root to: 'site#index'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'

  get '/teacher/profile', to: 'teachers#show', as: 'teacher_profile'
  get '/teacher/new', to: 'teachers#new', as: 'new_teacher'
  post '/teacher', to: 'teachers#create'
  get '/teacher/edit', to: 'teachers#edit', as: 'edit_teacher'
  patch '/teacher/edit', to: 'teachers#update'

  get '/student/profile', to: 'students#show', as: 'student_profile'
  get '/student/new', to: 'students#new', as: 'new_student'
  post '/student', to: 'students#create'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/course/new', to: 'courses#new', as: 'new_course'
  post '/course', to: 'courses#create'
  get '/course/:id', to: 'courses#show', as: 'course_show'

  get '/course/:id/assignment/new', to: 'assignments#new', as: 'new_assignment'
  post '/assignment', to: 'assignments#create'
  get '/assignment/:id', to: 'assignments#show', as: 'assignment_show'



end

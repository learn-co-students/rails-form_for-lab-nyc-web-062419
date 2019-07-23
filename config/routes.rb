Rails.application.routes.draw do
  get 'students/new', to: "students#new", as: 'new_student'
  post "/students", to: "students#create"
  patch 'students/:id/show', to: "students#update"
  get 'students/:id/show', to: "students#show", as: 'student'
  get 'students/:id/edit', to: "students#edit", as: 'edit_student'
  get 'students/:id/delete', to: "studetns#delete", as: 'delete_student'
  delete "/students", to: "students#delete"

  get 'school_classes/new', to: "school_classes#new", as: 'new_school_class'
  post "/school_classes/", to: "school_classes#create"
  patch "/school_classes/:id/show", to: "school_classes#update"
  get 'school_classes/:id/show', to: "school_classes#show", as: 'school_class'
  get 'school_classes/:id/edit', to: "school_classes#edit", as: 'edit_school_class'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

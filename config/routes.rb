Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Get request for localhost:3000/students
  get "/students", to:"students#index"

  # Get request for localhost:3000/students/grades
  get "/students/grades", to:"students#grades"

  # Get request for localhost:3000/students/highest-grade

  get "/students/highest-grade", to:"students#highest_grade"
end

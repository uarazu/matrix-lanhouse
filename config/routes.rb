Rails.application.routes.draw do  get 'admin/index'
  resources 'sliders'
  resources 'services'
  resources 'structures'
  get 'inicio/index'
  root to: "inicio#index"
end

Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "landing#index", as: :landing
  post "/trigger-job", to: "landing#trigger_job", as: :landing_trigger_job
  post "/trigger-worker", to: "landing#trigger_worker", as: :landing_trigger_worker
end

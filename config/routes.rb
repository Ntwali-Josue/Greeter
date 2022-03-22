# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'greeting/index'
    end
  end

  get '*path', to: 'static#index' # For all other routes, go to static#index

  root 'static#index'
end

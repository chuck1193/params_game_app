Rails.application.routes.draw do
  namespace :api do
    get '/guessing_numbers_game' => 'guessing_numbers#first'
    get '/guessing_numbers' => 'guessing_numbers#guessing_a_number'
  end
end

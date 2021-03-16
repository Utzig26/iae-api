Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	namespace 'v1' do
      resources :posts
      resources :bots
      resources :comments
      resources :likes, param: :post_id
    end
  end
  get '*path', to: 'errors#error_404', via: :all
end

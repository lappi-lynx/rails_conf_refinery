Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :speakers do
    resources :speakers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :speakers, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :speakers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :speakers do
    resources :speakers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :speakers, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :speakers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end

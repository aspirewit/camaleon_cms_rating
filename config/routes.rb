Rails.application.routes.draw do
  scope PluginRoutes.system_info["relative_url_root"] do
    scope '(:locale)', locale: /#{PluginRoutes.all_locales}/, :defaults => {  } do
      # frontend
      namespace :plugins do
        namespace 'camaleon_cms_rating' do
          get 'index' => 'front#index'
          post 'create' => 'front#create'
        end
      end
    end

    #Admin Panel
    scope :admin, as: 'admin', path: PluginRoutes.system_info['admin_path_name'] do
      namespace 'plugins' do
        namespace 'camaleon_cms_rating' do
          controller :admin do
            get :index
            get :settings
            post :save_settings
          end
        end
      end
    end

    # main routes
    #scope 'camaleon_cms_rating', module: 'plugins/camaleon_cms_rating/', as: 'camaleon_cms_rating' do
    #  Here my routes for main routes
    #end
  end
end

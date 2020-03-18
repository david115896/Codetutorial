class ApplicationController < ActionController::Base
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation, :remember_me)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation, :current_password)}
    end

    def authenticate_user
        unless user_signed_in?
            redirect_to new_user_session_path, flash: {danger: "Please to log in!"}
        end
    end

    before_action :prepare_meta_tags

    def prepare_meta_tags(options={})
        site_name   = "Code Tutorial"
        title       = [controller_name, action_name].join(" ")
        description = "The CookiesHQ team creates web software for humans"
        image       = options[:image] || "your-default-image-url"
        current_url = request.url
    
        # Let's prepare a nice set of defaults
        defaults = {
          site:        site_name,
          title:       title,
          image:       image,
          description: description,
          keywords:    %w[web software development mobile app],
          twitter: {
            site_name: site_name,
            site: '@codetutorial',
            card: 'summary',
            description: description,
            image: image
          },
          og: {
            url: current_url,
            site_name: site_name,
            title: title,
            image: image,
            description: description,
            type: 'website'
          }
        }
    
        options.reverse_merge!(defaults)
    
        set_meta_tags options
      end
end

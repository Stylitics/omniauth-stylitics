require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Stylitics < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "stylitics"
      option :provider_ignores_state, true

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {:site => "https://www.stylitics.com",
                               :authorize_url => '/oauth/authorize',
                               :token_url => '/oauth/token'}

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ raw_info['id'] }

      info do
        {
          :first_name => raw_info['nameFirst'],
          :email => raw_info['email'],
          :user_name => raw_info['userName']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me').parsed
      end
    end
  end
end

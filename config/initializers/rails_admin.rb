RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    edit do
      fields :name, :email, :password, :role
    end

    list do
      field :name
      field :email
      field :role
    end
  end

  config.model 'UrlShortener' do
    edit do
      fields :url, :status, :clicked
    end

    list do
      field :url
      field :formatted_shortened_url do
        formatted_value do
          url = "#{ENV['HOST']}/r/#{bindings[:object].shortened_url}"
          bindings[:view].link_to(url, url, target: '_blank')
        end
      end
      field :clicked
      field :removed_characters
      field :status
    end
  end
end

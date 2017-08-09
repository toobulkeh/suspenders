if Rails.env.development? or Rails.env.test? or ENV.fetch("HEROKU_APP_NAME", "").include?("staging-pr-")
  require "factory_girl"

  namespace :dev do
    desc "Sample data for local development environment"
    task prime: "db:setup" do
      include FactoryGirl::Syntax::Methods

      # create(:user, email: "user@example.com", password: "password")
    end
  end
end

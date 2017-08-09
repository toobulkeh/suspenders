if ENV.fetch("PRIMEABLE", "").present?
  require "factory_girl"

  namespace :db do
    desc "Sample data for local development environment"
    task prime: "db:setup" do
      include FactoryGirl::Syntax::Methods

      # create(:user, email: "user@example.com", password: "password")
    end
  end
end

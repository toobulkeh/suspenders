require "spec_helper"

RSpec.describe "Skipping spring" do
  before do
    drop_dummy_database
    remove_project_directory
  end

  it "works with Rails' --skip-spring flag" do
    ENV['PATH'] = '/bin:/usr/bin'
    run_suspenders("--skip-spring")

    gemfile = IO.read("#{project_path}/Gemfile")
    expect(gemfile).to match(/high_voltage/)
  end
end

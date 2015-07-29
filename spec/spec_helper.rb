require 'bundler/setup'

Bundler.require(:default, :test)

require (Pathname.new(__FILE__).dirname + '../lib/bowties').expand_path

Dir['./spec/support/**/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.include BowtiesTestHelpers

  config.before(:all) do
    create_tmp_directory
  end

  config.before(:each) do
    FakeHeroku.clear!
    FakeGithub.clear!
  end
end

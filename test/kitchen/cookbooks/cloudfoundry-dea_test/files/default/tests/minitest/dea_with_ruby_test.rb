require File.expand_path('../support/helpers', __FILE__)
require 'yaml'

describe 'cloudfoundry-dea::dea_with_ruby' do
  include Helpers::CFDEATest

  it 'creates a valid config file' do
    file("/etc/cloudfoundry/dea.yml").must_exist # .with(:owner, 'cloudfoundry')
    YAML.load_file('/etc/cloudfoundry/dea.yml')
  end

  it 'creates a config file with the expected runtime' do
    config = YAML.load_file('/etc/cloudfoundry/dea.yml')
    config["runtimes"].class.must_equal Array
    config["runtimes"].must_equal ["ruby19"]
  end
end

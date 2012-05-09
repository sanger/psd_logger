require 'helper'
require 'ostruct'

class TestPsdLogger < Test::Unit::TestCase
  DeploymentInfo = OpenStruct.new(
    :name        => 'app_name',
    :environment => 'rails_env',
    :version     => 'version'
  )

  context "on first initialization of default PsdLogger object" do
    setup do
      @logger = PsdLogger.new(DeploymentInfo)
    end
    should "have level set to INFO" do
      assert_equal Logger::INFO, @logger.level
    end

    should 'generate a reasonable application name' do
      assert_equal '[app_name:rails_env:version]', @logger.send(:app_prefix)
    end
  end
  context "a PsdLogger object" do
    setup do
      @logger = PsdLogger.new(DeploymentInfo)
    end
    Logger::Severity.constants.each do |severity|
      should "respond to method #{severity}" do
        @logger.send(severity.downcase.to_sym, 'message', 'progname')
      end
      should "respond to method #{severity}?" do
        @logger.send("#{severity.downcase}?".to_sym)
      end
    end
  end
end

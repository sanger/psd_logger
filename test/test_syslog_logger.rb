require 'helper'

class TestSyslogLogger < Test::Unit::TestCase
  context "on first initialization of default SyslogLogger object" do
    setup do
      @logger = SyslogLogger.new
    end
    should "have level set to DEBUG" do
      assert_equal @logger.level, Logger::DEBUG
    end
  end
  context "a SyslogLogger object" do
    setup do
      @logger = SyslogLogger.new
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

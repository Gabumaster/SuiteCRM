After do
  puts raise('fail test, see HTML report...') if $ERR_TEST # If global is true, fail the test.
  #Capybara.current_session.driver.quit
end

# require 'watir'


# After do
#   @browser.close
# end

# require 'watir'

# Before do |scenario|
#   DataMagic.load_for_scenario(scenario)
#   @browser = Watir::Browser.new :chrome
# end


# After do
#   @browser.close
# end
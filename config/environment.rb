# Load the Rails application.
require File.expand_path('../application', __FILE__) 
# Initialize the Rails application.
Pricemeter::Application.initialize!
#config.gem 'paperclip'
Paperclip.options[:command_path] = "/usr/bin/"

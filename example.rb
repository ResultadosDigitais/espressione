$LOAD_PATH.unshift File.expand_path('./lib')

require "espressione"

# validate simple email
email = 'joe@doe.com'
puts "Valid E-mail" if email =~ Espressione::EMAIL

# validate url
url = "https://github.com/dvinciguerra"
puts "Valid Url" if url =~ Espressione::URL

# validate a uuid
uuid = '8539ad20-317e-0137-4c89-7aa46e47cfb4'
puts "Valid UUID" if uuid =~ Espressione::UUID

# validate a datetime
datetime = Time.now
# require "byebug"; debugger
puts datetime
puts "Valid DateTime" if datetime =~ Espressione::DATETIME





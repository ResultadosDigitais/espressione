$LOAD_PATH.unshift File.expand_path('./lib')

require "espressione"

# validate simple email
email = 'joe@doe.com'
puts "Contains a valid e-mail" if email =~ Espressione::EMAIL

# validate url
url = "https://github.com/dvinciguerra"
puts "Contains a valid url" if url =~ Espressione::URL

# validate a uuid
uuid = '8539ad20-317e-0137-4c89-7aa46e47cfb4'
puts "Contains a valid uuid" if uuid =~ Espressione::UUID

# validate a datetime
datetime = Time.now.utc
puts "Contains a valid datetime" if datetime.to_s =~ Espressione::DATETIME





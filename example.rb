$LOAD_PATH.unshift File.expand_path('./lib')

require "espressione"

# validate simple email
email = 'joe@doe.com'
puts "Contains a valid e-mail" if Espressione::EMAIL.match(email)

# validate url
url = "https://github.com/dvinciguerra"
puts "Contains a valid url" if  Espressione::URL.match(url)

# validate a uuid
uuid = '8539ad20-317e-0137-4c89-7aa46e47cfb4'
puts "Contains a valid uuid" if Espressione::UUID.match(uuid)

# validate a datetime
datetime = Time.now.utc
puts "Contains a valid datetime" if Espressione::DATETIME.match(datetime.to_s)

# validate a ip
ip = '192.168.1.1'
puts "Contains a valid ip" if Espressione::IP.match(ip)


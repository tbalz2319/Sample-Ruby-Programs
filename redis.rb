require 'redis'

b = Redis.new
puts b.ping
b.set('too','taa')
puts b.get('too')

# Test Program Specifically for Imonggo C3 Accounts
require "net/http"
require "uri"

# User Handling
print "Please enter your Imonggo username: "
user_name = gets.chomp
print "Please enter an existing product ID: "
prod_id = gets.chomp
print "Indicate whether you want XML or JSON: " 
content_type = gets.chomp.downcase

#Handles URL Requests
url = "https://#{user_name}.c3.imonggo.com/api/products/#{prod_id}.#{content_type}"
uri = URI(url)
req = Net::HTTP::Get.new(uri)

#API Token Handling
print "Please enter your API Token: "
key = gets.chomp
print "Please enter your Password: "
val = gets.chomp
req.basic_auth key, val

# Handles HTTP Requests
res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') {|http|
  http.request(req)
}
puts res.body





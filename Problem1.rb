require 'httparty'
require 'json'

response = HTTParty.get("https://api.weatherapi.com/v1/current.json?key=5c8c38aab4a7438187a50458242803&q=Memphis&days=1&aqi=no&alerts=no")

if response
    puts "Current temperature: #{response['current']['temp_f']}"
    puts "Humidity: #{response['current']['humidity']}"
    puts "Weather conditions: #{response['current']['condition']['text']}"
    puts "Average temperature: "
end
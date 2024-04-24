require 'httparty'
require 'json'

response = HTTParty.get("https://api.weatherapi.com/v1/forecast.json?key=5c8c38aab4a7438187a50458242803&q=Memphis&days=1&aqi=no&alerts=no")

if response
    puts "Location: #{response['location']['name']}, #{response['location']['region']}"
    puts "Current temperature: #{response['current']['temp_f']}"
    puts "Humidity: #{response['current']['humidity']}"
    puts "Weather conditions: #{response['current']['condition']['text']}"

    hourly_forecast = response['forecast']['forecastday'][0]['hour']
    total_temperature = hourly_forecast.map { |hour| hour['temp_f'] }.sum
    average_temperature = total_temperature / hourly_forecast.size.to_f
    puts "Average temperature (hourly): #{average_temperature.round(1)}"
end
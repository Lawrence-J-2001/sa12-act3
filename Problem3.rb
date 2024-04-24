require 'httparty'
require 'json'

response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?apikey=wHFVqGkPGVFrddqkDikdHmlPWgpzF0Za&city=Memphis")

if response
    puts "Events in Memphis, TN"
    puts ""
    
    events = response["_embedded"]["events"]
    events.each do |event|
        name = event["name"]
        venue = event["_embedded"]["venues"][0]["name"]
        date = event["dates"]["start"]["localDate"]
        time = event["dates"]["start"]["localTime"]

        puts "Event: #{name}"
        puts "Venue: #{venue}"
        puts "Date: #{date}"
        puts "Time: #{time}"
        puts ""
    end
end
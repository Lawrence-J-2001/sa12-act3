require 'httparty'
require 'json'

response = HTTParty.get("https://app.ticketmaster.com/discovery/v2")
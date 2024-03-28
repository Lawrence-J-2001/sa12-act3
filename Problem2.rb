require 'httparty'
require 'json'

response = HTTParty.get("https://v6.exchangerate-api.com/v6/0c95adb8f05a6be971dac9f1/latest/USD")

if response
    source_currency = response['conversion_rates']['USD']
    target_currency = response['conversion_rates']['BDT']
end

def conversion(amount, x, y)
    new_amount = amount * (y / x)
    new_amount.round(2)
end

puts conversion(34, source_currency, target_currency)
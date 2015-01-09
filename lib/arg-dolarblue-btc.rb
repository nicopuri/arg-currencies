require 'httparty'
require 'colorize'

class ArgCurrency

	def initialize(argv=[""])
		@urlDolar = 'http://ws.geeklab.com.ar/dolar/get-dolar-json.php'
                @urlBitstamp = 'https://api.bitfinex.com/v1/pubticker/btcusd'
	end

	def get_currencies
		response = HTTParty.get(@urlDolar)

		json = JSON.parse(response.body)

		puts '================= DOLAR ================'
		puts "Dolar Blue:".colorize(:blue).bold.underline + " $#{json['blue']}"
		puts "Dolar Oficial:".colorize(:green).bold.underline + " $#{json['libre']}"

		#BTC
		response = HTTParty.get(@urlBitstamp)
		json = JSON.parse(response.body)

		puts '================= BTC =================='
                puts 'Last:'.colorize(:light_black).underline + " $#{json['last_price']}".bold
		puts 'High:'.colorize(:light_black).underline + " $#{json['high']}"
		puts 'Low:'.colorize(:light_black).underline + " $#{json['low']}"
		puts 'Bid:'.colorize(:light_black).underline + " $#{json['bid']}"
		puts 'Ask:'.colorize(:light_black).underline + " $#{json['ask']}"
		puts 'Volume:'.colorize(:light_black).underline + " #{json['volume']}"
		puts '========================================'
	end
end

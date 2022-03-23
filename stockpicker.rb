def pick_days(stock_prices)
  day_to_buy = 0
  day_to_sell = 0
  profit = 0
  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if sell_price - buy_price > profit
          day_to_buy = buy_day
          day_to_sell = sell_day
          profit = sell_price - buy_price
        end
      end
    end
  end
  return [day_to_buy,day_to_sell,profit]
end



p pick_days([17,3,6,9,15,8,6,1,10])


# frozen_string_literal: true

def stock_picker(stocks)
  max_sell = 0
  array = []

  stocks.each.with_index do |stock_buy, i|
    j = i
    while j < stocks.length
      sell_price = stock_buy - stocks[j]
      if sell_price < max_sell
        max_sell = sell_price
        array = [i, j]
      end
      j += 1
    end
  end
  p array
end

stock_list = [17, 3, 6, 7, 3, 9, 8, 15, 6, 1, 13]

stock_picker(stock_list)

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
end

stock_list = [17, 3, 6, 9, 8, 15, 6, 1, 10]

stock_picker(stock_list)

# stocks.each.with_index do |stock_buy, b|
#   if stock_sell - stock_buy > max_sell
#     max_sell = stock_sell - stock_buy
#     array = [b, s]
#   end
# end

# PSEUDOCODE

# variable 'max_sell' to hold the highest difference
# variable holding the returned array

# Check if element value is lower than 'max_sell'
# From the last element of the array, subtract each preceding element by that number. If difference is larger, replace 'max_sell'
# push element's index to the array

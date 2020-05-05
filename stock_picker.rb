# frozen_string_literal: true

def stock_picker(stocks)
  stocks = stocks.reverse
  p stocks
  max_sell = 0
  array = []

  stocks.each.with_index do |stock_sell, s|
    stocks.each.with_index do |stock_buy, b|
      if stock_sell - stock_buy > max_sell
        max_sell = stock_sell - stock_buy
        array = [b, s]
      end
    end
  end
  print array
  print max_sell
end

stock_list = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_picker(stock_list)

# PSEUDOCODE

# variable 'max_sell' to hold the highest difference
# variable holding the returned array

# Check if element value is lower than 'max_sell'
# From the last element of the array, subtract each preceding element by that number. If difference is larger, replace 'max_sell'
# push element's index to the array

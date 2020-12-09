def stock_picker(timeseries)
  
  solution = [0,0]
  profit_max = 0

  timeseries.each_with_index do |buy_value, buy_day|
    
    timeseries.slice(buy_day,timeseries.length - buy_day).each_with_index do |sell_value, index|

      if profit_max < sell_value - buy_value
        solution = [buy_day, buy_day + index] 
        p profit_max = sell_value - buy_value
      end 
    
    end
  end

  return "The solution is: #{solution}, with a #{profit_max} profit"
end


puts stock_picker([1,3,6,9,15,8,6,1,1])
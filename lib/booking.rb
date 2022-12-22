class Booking
    attr_accessor :time, :hours, :days, :weeks

    def initialize 
      @minute_price = 2
      @hour_price = 22
      @day_price = 60
      @week_price = 105
    end

    def get_price(minutes)
      @minutes = minutes.ceil
      convert_time
      best_price
    end

    private

    def convert_time
      @hours = (@minutes.to_f / 60).ceil
      @days = (@minutes.to_f / 1440).ceil
      @weeks = (@minutes.to_f / 10080).ceil
    end

    def price_per_minute
      @minutes * @minute_price
    end

    def price_per_hour
      @hour_price * @hours   
    end

    def price_per_day
      @days * @day_price
    end

    def price_per_week 
      @weeks * @week_price  
    end

    def best_price
      [price_per_minute, price_per_hour, price_per_day, price_per_week].min
    end  
end
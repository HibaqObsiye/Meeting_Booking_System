class Booking
    attr_accessor :time, :hours, :days, :weeks

    def initialize(time)
        @time = time
        @minute_price = 2
        @hour_price = 22
        @day_price = 60
        @week_price = 105
    end

    def time_conversion
        @hours = (@time.to_f / 60).round
        @days = (@time.to_f / 1440).round
        @weeks = (@time.to_f / 10080).round
    end

    def price_per_minute
        @min_cost_total = @time * 2
    end

    def price_per_hour
        if @hours == 0
            @hour_price
        else
            hour_cost_total = @hour_price * @hours
        end
    end

    def price_per_day
        if @days == 0
            @day_price
        else
            day_cost_total = @days * @day_price
        end
    end

    def price_per_week 
        if @weeks == 0
            @week_price
        else
            week_cost_total = @weeks * @week_price  
        end
    end

    def best_price
        [price_per_minute, price_per_hour, price_per_day, price_per_week].min
    end
   
end
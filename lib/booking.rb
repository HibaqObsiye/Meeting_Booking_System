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
        if @hours <= 0
            @hour_price
        else
            hour_cost_total = @hour_price * @hours
        end
    end
    

end
class Booking
    attr_accessor :time, :hours, :days, :weeks

    def initialize(time)
        @time = time
        @minute_price = 2
        @hour_price = 22
        @day_price = 60
        @week_price = 105
    end

end
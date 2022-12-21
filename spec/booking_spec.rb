require './lib/booking.rb'

describe Booking do 

    it "can make a new instance of Booking class" do
        time = 20
        expect(Booking.new(time)).to be_an_instance_of(Booking)
    end

    it "initializes with the time(in minutes) specified by the user" do
        booking = Booking.new(20)
        expect(booking.time).to eq(20)
    end
 
    context "Given the booking time in minutes" do
        it "converts it to hours" do
            booking = Booking.new(180)
            booking.time_conversion
            
            expect(booking.hours).to eq(3)

        end
    end

    context "Given the booking time in minutes" do
        it "converts it to days" do
           booking = Booking.new(1440) 
           booking.time_conversion

           expect(booking.days).to eq(1)
        end
    end

    context "Given the booking time in minutes" do
        it "converts it to weeks" do
            booking = Booking.new(10080)
            booking.time_conversion

            expect(booking.weeks).to eq(1)
        end
    end

    context "Converting minutes to weeks" do
        it "rounds number to nearest whole value if value is a decimal" do
            booking = Booking.new(15120)
            booking.time_conversion
            
            expect(booking.weeks).to eq(2)
        end
    end

    context "Converting minutes to hours" do
        it "rounds number to nearest whole value if value is a decimal" do
            booking = Booking.new(150)
            booking.time_conversion
            
            expect(booking.hours).to eq(3)
        end
    end

    context "Converting minutes to days" do
        it "rounds number to nearest whole value if value is a decimal" do
            booking = Booking.new(6480)
            booking.time_conversion
            
            expect(booking.days).to eq(5)
        end
    end

    
    it "calculates the cost of booking a room per minute and returns price as an integer " do
        booking = Booking.new(60)
                
        expect(booking.price_per_minute).to eq(120)
    end

    it "calculates the cost of booking a room in hours and returns the price as an integer" do
        booking = Booking.new(360)
        booking.time_conversion
        expect(booking.price_per_hour).to eq(132)
    end

    xit "calculates the cost of booking a room in days and returns the price as an integer" do

    end

    xit "calculates the cost of booking a room in weeks and returns the price as an integer" do

    end
    


 
end
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

        xit "converts it to days" do

        end

        xit "converts it to weeks" do

        end
    end

end
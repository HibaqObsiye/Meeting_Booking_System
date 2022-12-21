require './lib/booking.rb'

describe Booking do 

    it "can make a new instance of Booking class" do
        time = 20
        expect(Booking.new(time)).to be_an_instance_of(Booking)
    end

    it "initializes with the time specified by the user" do
        booking = Booking.new(20)
        expect(booking.time).to eq(20)
    end
 

end
require './lib/booking.rb'

describe Booking do 

    it "can make a new instance of Booking class" do
        expect(Booking.new).to be_an_instance_of(Booking)
    end

end
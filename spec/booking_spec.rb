require './lib/booking.rb'

describe Booking do

    describe '#get_price' do
        context 'when zero minutes given' do
            it 'returns zero' do
                expect(subject.get_price(0)).to eq(0)
            end
        end
    end

    # it "can make a new instance of Booking class" do
    #     time = 20
    #     expect(Booking.new(time)).to be_an_instance_of(Booking)
    # end

    # it "initializes with the time(in minutes) specified by the user" do
    #     booking = Booking.new(20)
    #     expect(booking.time).to eq(20)
    # end
 
    # context "Given the booking time in minutes" do
    #     it "converts it to hours" do
    #         booking = Booking.new(180)
    #         booking.time_conversion
            
    #         expect(booking.hours).to eq(3)

    #     end
    # end

    # context "Given the booking time in minutes" do
    #     it "converts it to days" do
    #        booking = Booking.new(1440) 
    #        booking.time_conversion

    #        expect(booking.days).to eq(1)
    #     end
    # end

    # context "Given the booking time in minutes" do
    #     it "converts it to weeks" do
    #         booking = Booking.new(10080)
    #         booking.time_conversion

    #         expect(booking.weeks).to eq(1)
    #     end
    # end

    # context "Converting minutes to weeks" do
    #     it "rounds number to nearest whole value if value is a decimal" do
    #         booking = Booking.new(15120)
    #         booking.time_conversion
            
    #         expect(booking.weeks).to eq(2)
    #     end
    # end

    # context "Converting minutes to hours" do
    #     it "rounds number to nearest whole value if value is a decimal" do
    #         booking = Booking.new(150)
    #         booking.time_conversion
            
    #         expect(booking.hours).to eq(3)
    #     end
    # end

    # context "Converting minutes to days" do
    #     it "rounds number to nearest whole value if value is a decimal" do
    #         booking = Booking.new(6480)
    #         booking.time_conversion
            
    #         expect(booking.days).to eq(5)
    #     end
    # end
  
    # it "calculates the cost of booking a room per minute and returns price as an integer " do
    #     booking = Booking.new(60)
                
    #     expect(booking.price_per_minute).to eq(120)
    # end

    # it "calculates the cost of booking a room in hours and returns the price as an integer" do
    #     booking = Booking.new(360)
    #     booking.time_conversion
    #     expect(booking.price_per_hour).to eq(132)
    # end

    # it "calculates the cost of booking a room in days and returns the price as an integer" do
    #     booking = Booking.new(7200)
    #     booking.time_conversion

    #     expect(booking.price_per_day).to eq(300)
    # end

    # it "calculates the cost of booking a room in weeks and returns the price as an integer" do
    #     booking = Booking.new(90720)
    #     booking.time_conversion

    #     expect(booking.price_per_week).to eq(945)
    # end
    
    # context "Having calcuated time price per min,hour,day, and week" do
    #     it "returns the best price for booking a room for 1440 minutes" do
    #         booking = Booking.new(1440)
    #         booking.time_conversion

    #         expect(booking.best_price).to eq(60)
    #     end

    #     it "returns the best price for booking a room for 2880 minutes" do
    #         booking = Booking.new(2880)
    #         booking.time_conversion

    #         expect(booking.best_price).to eq(105)
    #     end

    #     it "returns the best price for booking a room for 20160 minutes" do
    #         booking = Booking.new(20160)
    #         booking.time_conversion

    #         expect(booking.best_price).to eq(210)
    #     end
    # end 

    # it "returns the default hour price if hour time is equal to 0" do
    #     booking = Booking.new(10)
    #     booking.time_conversion

    #     expect(booking.price_per_hour).to eq(22)
    # end

    # it "returns the default day price if day time is equal to 0" do
    #     booking = Booking.new(5)
    #     booking.time_conversion

    #     expect(booking.price_per_day).to eq(60)
    # end

    # it "returns the default week price if week time is equal to 0" do
    #     booking = Booking.new(3)
    #     booking.time_conversion

    #     expect(booking.price_per_week).to eq(105)
    # end
end
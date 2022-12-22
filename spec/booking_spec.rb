require './lib/booking.rb'

describe Booking do

    describe '#get_price' do
        context 'when zero minutes given' do
            it 'returns zero' do
                expect(subject.get_price(0)).to eq(0)
            end
        end

        context 'When 60 minutes given' do
            it 'returns 22' do
                expect(subject.get_price(60)).to eq(22)
            end
        end

        context 'When 1440 minutes given' do
            it 'returns 60 ' do
                expect(subject.get_price(1440)).to eq(60)
            end
        end

        context 'When 10080 minutes given' do
            it 'returns 105' do
                expect(subject.get_price(10080)).to eq(105)
            end
        end

        context 'When given 1.5 hours in minutes' do
            it 'returns 1.5 hours rounded up to 2 hours ' do
                subject.get_price(90)
              expect(subject.hours).to eq(2)  
            end
        end

        context 'When given 2.5 days in minutes' do
            it 'returns 2.5 days rounded up to 3 days' do
                subject.get_price(3600)
              expect(subject.days).to eq(3)  
            end
        end

        context 'When given 3.5 weeks in minutes' do
            it 'returns 2.5 weeks rounded up to 4 weeks' do
                subject.get_price(35280)
              expect(subject.weeks).to eq(4)  
            end
        end

        context 'When 3 hours are given' do
            it 'returns  day price as the cheaper option than hour price' do
                subject.get_price(180)
                expect(subject.get_price(180)).to eq(60)
            end
        end

        context 'When 2 days are given' do
            it 'returns  week price as the cheaper option than day price' do
                expect(subject.get_price(2880)).to eq(105)
            end
        end

        context 'When 2 weeks are given' do
            it 'returns week price as the cheaper option' do
                expect(subject.get_price(20160)).to eq(210)
            end
        end
    end   
end
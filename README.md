# Booking Meeting System

### Project description
The purpose of this project is to build a booking class that's intended funtionality is to calculate the price of a meeting room based upon the given meeting duration and following [min|hour|day|week] tariff:

Price per minute: £2<br>
Price per hour: £22<br>
Price per day: £60<br>
Price per week: £105<br>

### Project setup and installation

1)Start by cloning this repo:
```
https://github.com/HibaqObsiye/Meeting_Booking_System
```
2)Set-up the enviornment to use Ruby's latest version:
```
rvm get stable
rvm use ruby --latest --install --default
```
3)run the commands below(if you don't have bundler already)
```
gem install bundler
bundle
```
## To run the project in irb

1) When in the project directory, run irb in your terminal
```
irb
```
2) Require the Booking class
```
require './lib/booking.rb'
```
3) Set up the instance for Booking class
```
booking = Booking.new
```
4) You are now able to get_price(minutes) based upon the given meeting duration and following [min|hour|day|week] tariff.
```
booking = Booking.new
booking.get_price(60)
```
### Demo screenshot
![alt text](images/demo.jpeg)

### My process and challenges

### Design

## Testing
    Installed Simplecov to test coverage. It's currently 100%
## Edge cases
- If time converted into either hour,day or week is not a whole number e.g 1.5 weeks
- If number given is less than or equal to zero

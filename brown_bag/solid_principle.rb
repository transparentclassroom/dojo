# Single Responsibility
# Open/Closed
# Liskov Substitution
# Interface Segregation
# Dependency Injection

# Single Responsibility

class DealProcessor
  def initialize(deals)
    @deals = deals
  end

  def process
    @deals.each do |deal|
      Commission.create!(deal: deal)
      deal.mark_processed
    end
  end
end

class Commission
  def initialize(deal:)
    self.amount = calculate_commission(deal)
  end

  def calculate_commission(deal)
    deal.dollar_amount * 0.05
  end
end

class Deal
  def mark_processed
    self.processed = true
    save!
  end
end

# Open/Closed

class UsageFileParser
  def initialize(client, parser)
    @client = client
    @parser = parser
  end

  def parse(file)
    @parser.parse(file)
    @client.last_parse = Time.now
    @client.save!
  end
end

class Parser
  def parse(file)
    raise MethodNotImplemented
  end
end

class XmlParser < Parser
  def parse(file)
    # parse xml
  end
end

class CsvParser < Parser
  def parse(file)
    # parse csv
  end
end

# Liskov Substitution

class Human
  def talk
    ''
  end

  def height
    ''
  end
end

class HomoHabilis < Human
  def talk
    'Agrrr!'
  end

  def height
    '1.29m'
  end
end

class HomoSapiens < Human
  def talk
    'Hello!'
  end

  def height
    { male: '1.70m', female: '1.62m' }
  end
end

humans.each { |h| h.talk }

class Rectangle
  include Rectangular
  def set_height(height)
    @height = height
  end

  def set_width(width)
    @width = width
  end
end

class Square
  include Rectangular
  def set_height(height)
    super(height)
    @width = height
  end

  def set_width(width)
    super(width)
    @height = width
  end
end

module Rectangular
  def color
    # return color
  end
end

rectangles.each { |r| r.set_height(100) }

rectangle.set_height(100)
rectangle.set_width(200)
expect(rectangle.dimensions).to eq(height: 100, width: 200)


# Interface Segregation

class ProductController
  def show
    @fee = FeeCalculator.new.calculate(product, user, vat)
  end
end

class OrderController
  def create
    @fee = fee_calculator.calculate_and_save(product, user, vat)
  end

  private

  def fee_calculator
    FeeCalculator.new
  end
end

class FeeCalculator
  def calculate(product, user, vat)
    # calculation
  end

  def calculate_and_save(product, user, vat)
    fee = calculate(product, user, vat)
    save(fee)
  end

  def save(fee)
    # save fee to db
  end
end


class Car
  def open_door
  end

  def start_engine
  end

  def change_engine
  end
end

class Driver
  def drive
    @car.open_door
    @car.start_engine
  end
end

class Mechanic
  def do_stuff
    @car.change_engine
  end
end




class Car
  include Driveable
  include Serviceable
end

module Serviceable
  def change_engine
  end
end

module Driveable
  def open
  end

  def start_engine
  end
end

class Driver
  def drive
    @car.open
    @car.start_engine
  end
end

class Mechanic
  def do_stuff
    @car_internals.change_engine
  end
end



# Xerox
# Job
#   staple
#   print
#   seal_envelope
# JobRunner -> StapleJobRunner, PrintJobRunner(job)
# StapleJob, PrintJob
# StapleJobRunner(stapleJob)

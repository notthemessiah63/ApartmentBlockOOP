
class Apartment

  attr_accessor :tenants

  def initialize(options = {})
    @price = options[:price]
    @occupied = options[:occupied]
    @balcony = options[:balcony]
    @sqft = options[:sqft]
    # @bedrooms = options[:bedrooms]
    @bathrooms = options[:bathrooms]
    @tenants = options[:tenants] || []
    # -- -- additional ---- #
    @status = options[:status]
    @max_occupancy = options[:max_occupancy]
    @dbl_bedrooms = options[:bedrooms]
    @sngl_bedrooms = options[:bedrooms]
  end

end
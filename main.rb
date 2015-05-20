require 'pry'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'tenant.rb'

building_one = Building.new floors: 5, address: 'WDI Heights, London', num_of_apartments:10, age:50, concierge: false

a1 = Apartment.new price: 500, occupied: false, balcony: false, sqft: 10000, bedrooms: 2, bathrooms: 1
a2 = Apartment.new price: 600, occupied: true, balcony: true, sqft: 15000, bedrooms: 1, bathrooms: 1
a3 = Apartment.new price: 700, occupied: false, balcony: false, sqft: 16000, bedrooms: 2, bathrooms: 1
a4 = Apartment.new price: 800, occupied: false, balcony: false, sqft: 17000, bedrooms: 3, bathrooms: 1

[a1,a2,a3].each { |appartment| building_one.apartments << appartment}

t1 = Tenant.new name:'Geff Bond',age:23, sex: 'm'
t2 = Tenant.new name:'Sally Jones',age:45, sex: 'f'
t3 = Tenant.new name:'Ben Brown',age:45, sex: 'f'
t4 = Tenant.new name:'Sally Jones',age:45, sex: 'f'

a1.tenants << t1 <<t4
a2.tenants << t2

# [t1,t2].each { |ten| a1.tenants << ten}


binding.pry
nil
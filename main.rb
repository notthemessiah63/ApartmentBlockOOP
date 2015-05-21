require 'pry'

require_relative 'building.rb'
require_relative 'apartment.rb'
require_relative 'tenant.rb'

# ------ definitions start here  ------------ 
#  ----- portfolio maintenance processing ---
def portfolio_maint()
  puts "Option: Maintain Block Portfolio[placeholder]"
  wait = gets
end
#  ----- end of portfolio maintenance processing ---
# 
#  ----- block maintenance processing --------------
def add_appt()
  puts "Option: Add Apartment to block[placeholder]"
  gets
end
def del_appt()
  puts "Option: Delete Apartment from block[placeholder]"
  gets
end
def suspend_appt()
  puts "Option: Suspend Apartment availability[placeholder]"
  gets
end
def resume_appt()
  puts "Option: Resume Apartment availability[placeholder]"
  gets
end

def block_maint()
  done = false
  until done
    system "clear"
    puts "Block Maintenance:"
    puts "================="
    puts "1) Add Apartment to block"
    puts "2) Delete Apartment from block"
    puts "3) Suspend Apartment availability"
    puts "4) Resume Apartment availability"
    puts "5) to quit"
    print "Select Option : "
    block_maint = gets.to_i
    case block_maint
     when 1
      # Add Apartment to block
      add_appt()
     when 2
      del_appt()
      # Delete Apartment from block
     when 3
      suspend_appt()
      # Suspend Apartment availability
     when 4
      resume_appt()
      # Resume Apartment availability
     when 5
      print "Option: you chose to quit Block maintenance"
      system "clear"
      done = true
     else 
      print "Option not recognised enter '5' to quit"  
     end 
  end
end
# --- end of block maintenance processing

# --- start of apartment maintenance processing

def add_tenant()
  system "clear"
  puts "Enter Tenant:"
  puts "================="
  print "Apartment Reference : "
  appt_ref = gets
  print "Tenant name : "
  tenant_name = gets
  print "Tenant age : "
  tenant_age = gets
  print "Tenant gender : "
  tenant_gender = gets
  wait = puts
  print "Select Option : "
end
def del_tenant()

end

def apartment_maint()
  done = false
  until done
    system "clear"
    puts "Apartment Maintenance:"
    puts "================="
    puts "1) Add tenant to apartment"
    puts "2) Delete tenant from apartment"
    puts "3) [no option]"
    puts "4) [no option]"
    puts "5) to quit"
    print "Select Option : "
    appt_maint = gets.to_i
    case appt_maint
     when 1
      # Add tenant to Apartment
      add_tenant()
     when 2
      del_tenant()
      # Add tenant to Apartment
      # [placeholder]
     when 3
      # [placeholder]
     when 4
      # [placeholder]
     when 5
      print "Option: you chose to quit Apartment maintenance"
      system "clear"
      done = true
     else 
      print "Option not recognised enter '5' to quit"  
     end 
  end
end
# --- end of apartment maintenance processing
# 
def tenant_maint()
  puts "Option: Maintain Tenant [placeholder]"
  gets
end
# ------ definitions end here  ------ 
# 
# ------ program starts here  ------ 
done = false
until done
  system "clear"
  puts "Apartment Rental System:"
  puts "========================"
  puts "1) block portfolio maintenance"
  puts "2) block maintenance"
  puts "3) apartment maintenance"
  puts "4) tenant maintenance"
  puts "5) quit System"
  print "Select Option : "
  maint_type = gets.to_i
  case maint_type
   when 1
    # give Maint block Portfolo
    portfolio_maint()
   when 2
    block_maint()
    # give Maint block info
   when 3
    apartment_maint()
    # give Maint apartment info
   when 4
    tenant_maint()
    # give Maint tenant info
   when 5
    print "Option: you chose to quit"
    system "clear"
    done = true
   else 
    print "Option not recognised enter '5' to quit"  
   end 
end

# ----- program ends here ----------

# ----- existing example processes to populate stuff

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
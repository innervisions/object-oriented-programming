# 06 - Flight Data
class Flight
  # attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# Removed accessors for database_handle. This is an internal
# implementation detail that should be abstracted away from the user.


class Journey

attr_accessor :in_journey

def initialize
  @in_journey = false
end

def touch_in
  @in_journey = true
end

def touch_out
end
end

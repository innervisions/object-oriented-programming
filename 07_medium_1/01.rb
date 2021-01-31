# 01 - Privacy
class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def display_status
    puts "The switch is #{switch}."
  end

  private

  attr_writer :switch
  attr_reader :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

machine = Machine.new
machine.display_status
machine.start
machine.display_status
machine.stop
machine.display_status

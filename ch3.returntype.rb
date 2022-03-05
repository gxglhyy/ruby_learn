class Ticket
  def get_venue
    return @venue
  end
  attr_writer :venue
  attr_reader :event
  def event=(event)
    if (event.length < 8)
      @event = event
    end
    if (event.length >= 8)
      @event = "error"
    end
    puts "event may be not right if the parameter is too long"
  end
end

t = Ticket.new
t.venue = "Guangzhou"
puts t.get_venue # Guangzhou

v = t.get_venue
v.replace("Guilin")
puts v # Guilin
puts t.get_venue # Guilin

t.event = "123456789"
puts t.event # error
e = t.event
e.replace("123456789")
puts e # 123456789
puts t.event # 123456789

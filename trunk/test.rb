

class Job
  attr_accessor :properties
  def initialize()
    @properties = {}
  end
  
end

class Environment
  attr_accessor :properties
  attr_reader   :name
  def initialize(name)
    @name = name
    @properties = {}
  end
end


ajob = Job.new()
puts "insert a name "
ajob.properties['david'] = gets
puts ajob.inspect
line = gets



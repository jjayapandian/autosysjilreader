

class Job
  attr_accessor :properties
  attr_accessor :name
  def initialize(name, properties = {})
    @name = name
    @properties = properties
  end
  
end
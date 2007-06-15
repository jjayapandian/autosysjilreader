

class Job
  attr_accessor :properties
  attr_accessor :name
  def initialize(name)
    @name = name
    @properties = {}
  end
  
end
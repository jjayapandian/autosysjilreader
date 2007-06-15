

class Environment
  attr_accessor :properties
  attr_reader   :name
  def initialize(name)
    @name = name
    @properties = {}
  end
end


class Environment
  attr_accessor :properties
  attr_accessor :name
  def initalize(env_name, properties = {})
    @name = env_name
    @properties = properties
  end
  
end
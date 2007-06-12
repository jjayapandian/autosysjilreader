
require 'test/unit'
#Job collection
class JobList
  def initialize
    @jobs = Array.new
  end
  def append(job)
    @jobs.push(job)
    self
  end
  def with_name(name)
    @jobs.find { |job| name ==job.name }
  end
  def [](index)
    @jobs[index]
  end
end

  
  
#environment collection
envList = []

class Job
  attr_accessor :properties
  attr_accessor :name
  def initialize(name)
    @name = name
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

#JOB RETREVAL LOGIC
#get each line
# if the line is a job name, get the name and the job type
#  if a job with the same name does not exist add that job to the collection of jobs
#  add each property and value to the properties hash




class TestJobList < Test::Unit::TestCase
  def test_delete
    list = JobList.new()
    a = Job.new('DAVID')
    a.properties['last_name'] = 'MOODY'
    b = Job.new('DEBBIE')
    list.append(a).append(b)
    assert_equal(a, list[0])
    assert_equal(b, list[1])
    assert_equal('MOODY', list[0].properties['last_name'])
  end
end



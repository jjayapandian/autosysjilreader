
require 'boottest'
require 'test/unit'
require 'lib/JobList'
require 'lib/Job'

class TestJobList < Test::Unit::TestCase
  def test_append
    list = JobList.new()
    a = Job.new('DAVID')
    a.properties['last_name'] = 'MOODY'
    b = Job.new('DEBBIE')
    list.append(a).append(b)
    assert_equal(a, list[0])
    assert_equal(b, list[1])
    assert_equal('MOODY', list[0].properties['last_name'])
  end
  def test_with_name
    list = JobList.new()
    a = Job.new('DAVID')
    a.properties['last_name'] = 'MOODY'
    b = Job.new('DEBBIE')
    list.append(a).append(b)
    c = list.with_name('DAVID')
    assert_equal(c.name, 'DAVID')
  end
  def test_index
    list = JobList.new()
    a = Job.new('DAVID')
    a.properties['last_name'] = 'MOODY'
    b = Job.new('DEBBIE')
    list.append(a).append(b)
    assert_equal(list[0].name,'DAVID')
    assert_equal(list[1].name, 'DEBBIE')
  end
  def test_passing_properties
    list = JobList.new()
    a = Job.new('DAVID',{'last_name' => 'MOODY',
                         'age' => 41,
                         'proffesion' => 'Software Architect'})
    assert_equal(a.properties['last_name'] , 'MOODY')
    assert_equal(a.properties['age'] , 41)
    assert_equal(a.properties['proffesion'] , 'Software Architect')
    
  end
  
end
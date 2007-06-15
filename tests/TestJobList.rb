require 'test/unit'
require '../lib/JobList'
require '../lib/Job'

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
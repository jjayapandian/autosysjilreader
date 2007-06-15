

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
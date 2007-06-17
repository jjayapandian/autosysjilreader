#---
# 

file_array= Dir.glob('**/[0-9]_cte1crw_[0-9]*.sql').each { | file | file }.sort

file_array.each do |element|
  puts element
end


#this is a change that I wanted to check in




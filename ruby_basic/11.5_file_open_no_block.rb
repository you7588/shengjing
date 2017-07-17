file = File.open("README.md")
begin
  file.each_line do |line|
    print line
  end
ensure
  file.close
end


array = ["ruby", "Perl", "PHP", "Python"]
sorted = array.sort
p sorted

array = ["ruby", "Perl", "PHP", "Python"]
sorted = array.sort{ |a, b| a <=> b}
p sorted

array = ["ruby", "Perl", "PHP", "Python"]
sorted = array.sort{ |a, b| a.length <=> b.length }
p sorted

# -*-ruby-*- 

task :count_points =>  :environment  do
  total = 0
  Australia.find(:all).each do |obj|
    obj.the_geom.geometries.each do |polygon|
      polygon.rings.each do |ring|
        total += ring.length unless ring.nil?
      end
    end
  end
  
  puts "Number of points: #{total}"
end


class MainController < ApplicationController


  def index
    
  end

  def first_polygon
    a = Australia.find(:first)
#    render :text => "{ paths: #{polygon_to_paths(a.the_geom.geometries[0])} }"


    render :text => "{ paths : [\"M 100 100 L 300 100 L 200 300 z\", \"M 500 400 L 200 200 L 100 100 z\"] }"
    
  end

  def polygon_to_paths(polygon)
    "[ " + polygon.first(5).collect do |lr|
      "\"M " + lr.collect do |p|
         "#{(p.x.to_f - 151) * 100} #{(p.y.to_f+33) * 100}" 
      end.join(" L ") + " z\""
     end.join(", ") + " ]"
 end


end

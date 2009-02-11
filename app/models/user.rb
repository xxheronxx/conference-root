class User < ActiveRecord::Base
  
  def full_name
    name = fname + " "
    name += "#{mname} " unless mname.nil?
    name += lname
    name
  end
  def short_name
    name = fname + " "
    name += lname
    name
  end
  
end

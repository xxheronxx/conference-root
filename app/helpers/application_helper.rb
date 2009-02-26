# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def list_of_wards
    wards = 
    [
      "Non-Member",
      "Champions Ward",
      "Magnolia 2nd Ward",
      "Fallbrook (Deaf) Branch",
      "Parkway Ward",
      "Inwood Ward",
      "Klein Ward",
      "Spring Creek Ward",
  	  "Kleinwood Ward",
  	  "Windrose Ward",
  	  "Magnolia 1st Ward"		
    ]
    wards
  end
end

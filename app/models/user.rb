class User < ActiveRecord::Base
  validates_presence_of  :phone, :address, :city, :zip, :ward, :youth_adult, :birthday
  validates_presence_of :fname, :message => "First Name must be filled in"
  validates_presence_of :lname, :message => "Last Name must be filled in"
  validates_presence_of :adult_type, :if => :is_adult?, :message => "Adult Leaders must indecate what type of leader they are."
  validates_format_of :email,
            :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
            :message => "needs to be a valid email address."  
  def is_adult?
    youth_adult == "Adult"
  end
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
  def y_a_short
    if youth_adult = "adult"
      type = adult_type
    else
      type = youth_adult
    end
    type
  end
  def y_a_phrase
    if youth_adult = "adult"
      phrase = "an #{adult_type}"
    else
      phrase = "a #{youth_adult}"
    end
    phrase
  end
end

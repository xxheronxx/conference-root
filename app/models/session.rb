class Session < ActiveRecord::Base
  attr_accessor :name, :password, :match
 
  belongs_to :admin
 
  before_validation :authenticate_admin
 
  validates_presence_of :match, :message => 'for your name and password could not be found',
                                :unless => :session_has_been_associated?
 
  before_save :associate_session_to_admin
 
  private
 
  def authenticate_admin
    self.match = Admin.find_by_name_and_password(self.name, self.password) unless session_has_been_associated?
  end
 
  def associate_session_to_admin
    self.admin_id ||= self.match.id
  end
 
  def session_has_been_associated?
    self.admin_id
  end
end
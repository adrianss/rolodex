class Contact < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :contact_list_id
  has_many :phones
  has_many :addresses

  accepts_nested_attributes_for :phones,
  :reject_if => :blank_phone?,
  :allow_destroy => true
  
  accepts_nested_attributes_for :addresses,
  :reject_if => :blank_address?,
  :allow_destroy => true

  validates_presence_of :name


  private
  def blank_address?(attributes)
    attributes["tag"].blank? && attributes["street"].blank?
  end

  def blank_phone?(attributes)
    attributes["tag"].blank? && attributes["number"].blank?
  end  
end

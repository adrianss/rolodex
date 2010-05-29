class Address < ActiveRecord::Base
  belongs_to :contact_id

  validates_presence_of :street
end

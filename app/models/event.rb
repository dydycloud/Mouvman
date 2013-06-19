class Event
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  embedded_in :user, :inverse_of => :events
  embeds_many :occasions
  validates :user, :name, :presence => true

  attr_accessible :name, :description
end
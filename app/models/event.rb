class Event < ApplicationRecord
  validates_presence_of :name
  has_many :attendees, ->{ where(["created_at > ?", Time.now - 7.day]).order("id DESC") }
  belongs_to :category, :optional => true
  has_one :location, :dependent => :destroy
  has_many :event_groupships
  has_many :groups, :through => :event_groupships

  accepts_nested_attributes_for :location, :allow_destroy => true, :reject_if => :all_blank


end

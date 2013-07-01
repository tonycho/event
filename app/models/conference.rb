class Conference < ActiveRecord::Base
  belongs_to :category
  belongs_to :parent_conference, :class_name => "Conference", :foreign_key => :parent_conference_id
  has_many :sub_conferences, :class_name => "Conference", :foreign_key => :parent_conference_id
end

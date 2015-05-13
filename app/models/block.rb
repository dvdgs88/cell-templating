class Block < ActiveRecord::Base
  belongs_to :page
  has_many :widgets, dependent: :destroy
end

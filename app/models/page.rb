class Page < ActiveRecord::Base
  validates_presence_of :name

  has_many :blocks, dependent: :destroy
  has_many :widgets, through: :blocks

  after_save :add_blocks

  private

    def add_blocks
      # self.blocks << Block.create({block_type:"main"})
      # self.blocks << Block.create({block_type:"side"})
      blocks.create({block_type:"main"})
      blocks.create({block_type:"side"})
    end


end

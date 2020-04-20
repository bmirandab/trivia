class Category < ApplicationRecord
  belongs_to :user
  belongs_to :game


  

  before_save :set_color

  def set_color
    generator = ColorGenerator.new saturation: 0.3, lightness: 0.75
    self.color = '#' + generator.create_hex
  end
end

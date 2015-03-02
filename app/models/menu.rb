class Menu < ActiveRecord::Base
  validates :foodItem, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_to: 0.01 }
  validates :menuID, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:   %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for a GIF, JPG, or PNG image.'
  }
  def self.latest
    Menu.order(:updated_at).last
  end
end

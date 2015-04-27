class Cart < ActiveRecord::Base
has_many :line_items, dependent: :destroy
#validates :acctbal, presence: true

def add_menu(menu_id)

current_item = line_items.find_by(menu_id: menu_id)
current_item = line_items.build(menu_id: menu_id)
end

def total_price
  line_items.to_a.sum { |item| item.total_price }
end

  def self.previous_balance_for_user(user)
    where(user_id: user.id).order(:created_at).pluck(:acctbal).last || 0.0
  end
end

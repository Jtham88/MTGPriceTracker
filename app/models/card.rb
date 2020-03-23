class Card < ActiveRecord::Base
  validates :name, presence:true
  def standard?
    false
  end
  def modern?
    false
  end
end
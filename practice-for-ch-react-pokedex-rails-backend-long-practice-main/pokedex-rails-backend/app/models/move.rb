# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: { maximum: 255 }
 
  has_many :pokemon
  has_many :poke_moves, through: :pokemon
 
end

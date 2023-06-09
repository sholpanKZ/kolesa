class Car < ApplicationRecord
  has_many_attached :images
  has_many :comments, dependent: :destroy

  include Visible

  belongs_to :owner, class_name: "User", foreign_key: "owner_id"


  validates :name, presence: true
  validates :price, presence: true,  length: { minimum: 5 }
  validates :description, presence: true,  length: { minimum: 20 }
  validates :color, presence: true


  VALID_COLORS = ['white', 'black', 'blue', 'grey', 'brown', 'red']

  validates :color, inclusion: { in: VALID_COLORS }

end

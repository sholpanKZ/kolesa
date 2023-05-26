class Car < ApplicationRecord

  VALID_COLORS = ['white', 'black', 'blue', 'grey', 'brown', 'red']

  validates :color, inclusion: { in: VALID_COLORS }

end

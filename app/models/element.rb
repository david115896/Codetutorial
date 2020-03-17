class Element < ApplicationRecord
    belongs_to :tuto, optional: true
    belongs_to :style

    has_one_attached :image


end

class Bottle < ApplicationRecord
  belongs_to :user, required: false
end

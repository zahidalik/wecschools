class Role < ApplicationRecord
  belongs_to :rolable, polymorphic: true
end

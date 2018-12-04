class User < ApplicationRecord
  belongs_to :room, optional: true
end

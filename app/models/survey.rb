class Survey < ApplicationRecord
  has_many :responses
  def to_param
    uuid
  end
end

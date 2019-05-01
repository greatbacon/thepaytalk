class Survey < ApplicationRecord
  def to_param
    uuid
  end
end

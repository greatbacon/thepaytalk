class Response < ApplicationRecord
  belongs_to :survey
  def to_param
    uuid
  end
end

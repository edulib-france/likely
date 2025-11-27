class Vote < ApplicationRecord
  validates :question_id, uniqueness: { scope: :voter_id }
end

class Goal < ApplicationRecord
    validates :name, :details, presence: true
    validates :status, inclusion: { in: [true, false] }
    belongs_to :user
end

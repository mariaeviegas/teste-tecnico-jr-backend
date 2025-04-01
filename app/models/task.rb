class Task < ApplicationRecord
    validates :titulo, presence: true
    validates :status, presence: true
end

class Movement < ActiveRecord::Base

  self.inheritance_column = nil
  TYPES = ['Credit', 'Debit']

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0, allow_nil: false }
  validates :type, presence: true, inclusion: { in: TYPES }
  validates :description, presence: true
end
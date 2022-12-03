class Url < ApplicationRecord
  validates :long, presence: true, format: URI::regexp(%w[http https])
  validates :short, presence: true, uniqueness: true
  validates :clicks, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates_length_of :short, within: 3..16, on: :create, message: "minimum 3 characters, maximum 16 characters"

  before_validation :generate_short

  private

  def generate_short
    self.short = SecureRandom.uuid[0..5] if self.short.nil? || self.short.empty?
  end
end

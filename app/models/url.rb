class Url < ApplicationRecord
  validates :original_url, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :custom_url, presence: true, uniqueness: true
  validates :clicks, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates_length_of :custom_url, within: 0..16, on: :create, message: 'maximum 16 characters'

  before_validation :generate_custom_url

  private

  def generate_custom_url
    self.custom_url = SecureRandom.uuid[0..5] if custom_url.nil? || custom_url.empty?
  end
end

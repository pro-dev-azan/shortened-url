# frozen_string_literal: true
class UrlShortener < ApplicationRecord
  before_save :generate_shortened_url, :reset_removed_character

  validate :validate_url, on: %i[create update]
  validates_presence_of :url, :status
  validates_uniqueness_of :url
  enum status: { active: 0, expire: 1 }

  private

  def validate_url
    errors[:url] << 'URL must contains HTTP://, HTTPS://' unless url =~ URI.regexp(%w[http https])
  end

  def generate_shortened_url
    self.shortened_url = SecureRandom.uuid[0..5] if shortened_url.blank?
  end

  def reset_removed_character
    self.removed_characters = url.length
  end
end

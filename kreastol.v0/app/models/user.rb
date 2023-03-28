class User < ApplicationRecord
  extend FriendlyId
  friendly_id :hash_id, use: :slugged

  before_validation :set_hash_id, prepend: true, if: Proc.new{ |user| user.hash_id.nil? }

  private

  def set_hash_id
    self.hash_id = SecureRandom.urlsafe_base64(5)
  end
end

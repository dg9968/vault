class Taxpayer < ApplicationRecord
	belongs_to :user
	validates :content, presence: true, length: { maximum: 140 }
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	validates :user_id, presence: true
	default_scope -> { order(created_at: :desc) }
end

class Project < ActiveRecord::Base
  validates :name, :description, :projecturl, presence: true
  mount_uploader :image, ImageUploader
end

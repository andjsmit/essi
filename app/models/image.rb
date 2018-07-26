# Generated via
#  `rails generate hyrax:work Image`
class Image < ActiveFedora::Base
  include Catorax::ImageBehavior
  include ::Hyrax::WorkBehavior

  self.indexer = ImageIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

 # Include extended metadata common to most Work Types
  include Catorax::ExtendedMetadata

  # This model includes metadata properties specific to the Image Work Type
  include Catorax::ImageMetadata

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end

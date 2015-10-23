require_relative 'image_utils'

class Image
  include ImageUtils
  extend ImageUtils::ClassMethods
end

image = Image.new()

image.preview
Image.fetch_from_twitter
# error because of fetch_from_twitter is class method from [def self.included(base) base.extend(ClassMethods) end]
image.fetch_from_twitters

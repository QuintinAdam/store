require "test_helper"

class GalleryTest < ActiveSupport::TestCase

  def gallery
    @gallery ||= Gallery.new
  end

  def test_valid
    assert gallery.valid?
  end

end

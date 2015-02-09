require "test_helper"

class MetaTagTest < ActiveSupport::TestCase

  def meta_tag
    @meta_tag ||= MetaTag.new
  end

  def test_valid
    assert meta_tag.valid?
  end

end

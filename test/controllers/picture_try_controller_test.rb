require 'test_helper'

class PictureTryControllerTest < ActionController::TestCase
  def setup
    @picture = pictures(:test1)
  end

  test 'should be invalid if title is missing' do
    @picture.title = nil
    assert !@picture.valid?
  end
  test 'should be invalid if image is missing' do
    @picture.image = nil
    assert !@picture.valid?
  end

end

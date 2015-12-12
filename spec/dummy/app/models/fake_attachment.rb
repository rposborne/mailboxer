# It's fake
class FakeAttachment < ActiveRecord::Base
  belongs_to :attachable, polymorphic: true

  def file
    File.read('spec/testfile.txt')
  end

  def filename
    'testfile.txt'
  end
end

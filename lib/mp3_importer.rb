require 'pry'
class MP3Importer

  attr_accessor :path
  def initialize(filename)
    @path = filename
  end

  def files
    x = Dir["#{@path}/*"]
  end
end

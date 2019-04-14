require 'pry'
class MP3Importer

  attr_accessor :path
  def initialize(filename)
    @path = filename
  end

  def files
    x = Dir["#{@path}/*"]
    x.each  {|y| y.slice!(/.*\//)}
  end

  def import
    files.each { |y|
      a = y.split(/-|[.]/)
      s = Song.new(a[1].strip)
      s.artist = a[0].strip
    }
  end
end

module ImageUtils
  def self.included(base)
    base.extend(ClassMethods)
  end

  def preview
    puts "print preview"
  end

  module  ClassMethods
    def fetch_from_twitter
      puts "fetch from twitter"
    end
  end
end

class Array
  # Extracts options from a set of arguments. Removes and returns the last
  # element in the array if it's a hash, otherwise returns a blank hash.
  #
  #   def options(*args)
  #     args.extract_options!
  #   end
  #
  #   options(1, 2)           # => {}
  #   options(1, 2, :a => :b) # => {:a=>:b}
  def extract_options!
    if last.is_a?(Hash) && last.extractable_options?
      pop
    else
      {}
    end
  end

  # Add the sy18nc-specific version of extract_options!
  def sy18nc_extract_options!
    extract_options!
  end

  def append!(value)
    self.each do |v|
      v.append!(value)
    end
  end

  def mark_fixme!
    self.each do |v|
      v.mark_fixme!
    end
  end
end

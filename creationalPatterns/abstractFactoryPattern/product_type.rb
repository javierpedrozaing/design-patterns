# abstract product interface
module ProductType
  def acid?
    raise NotImplementedError, "#{self.class} does not implement acidity"
  end

  def sweet?
    raise NotImplementedError, "#{self.class} does not implement sweetness"
  end
end

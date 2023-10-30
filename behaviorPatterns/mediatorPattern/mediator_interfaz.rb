class MediatorInterfaz
  def notify(sender, event)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
module BuilderInterface
  def build_transaction
    raise NotImplementedError, 'Este método debe ser implementado por las clases que incluyan este módulo'
  end
end
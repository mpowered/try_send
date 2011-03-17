module TrySend
  # Used to create method chains that have optional/non-failing segments.
  # (Aliased as #send_if)
  #
  # Example:
  #    name = 'Ben'
  #    name2 = 'Jerry'
  #    name.send_if(:reverse) {|n| n == 'Ben'}.capitalize
  #    name2.send_if(:reverse) {|n| n == 'Ben'}.capitalize
  #    => 'Neb'
  #    => 'Jerry'
  #
  # If no block is given then the method will be sent to the object if the object
  # responds to it. This means that NoMethodErrors won't destroy your chain.
  #
  # Example:
  #    'hello'.try_send(:undefined_method).upcase
  #    => 'HELLO'
  #
  def try_send(method, &block)
    return send(method) if !block_given? && self.respond_to?(method)
    return send(method) if block_given? && yield(self)
    return self
  end

  alias :send_if :try_send
end

Object.send(:include, TrySend)


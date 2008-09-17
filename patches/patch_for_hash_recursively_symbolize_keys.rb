class Hash
  def recursively_symbolize_keys
    tmp = {}

    for k, v in self
      tmp[k] = if v.respond_to? :recursively_symbolize_keys
                 v.recursively_symbolize_keys
               else
                 v
               end
    end

    tmp.symbolize_keys
  end
end

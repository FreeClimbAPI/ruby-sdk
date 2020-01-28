class JSONable
  def as_json
    hash = {}
    self.instance_variables.each do |var|
      val = self.instance_variable_get var
      if val.instance_of? Array
        arr = []
        val.each do |prompt|
          arr.push prompt.as_json
        end
        hash[var.to_s.delete "@"] = arr
      else
        hash[var.to_s.delete "@"] = val
      end
    end
    {self.class.name.split('::').last => hash}
  end
  def from_json! string
    JSON.load(string).each do |var, val|
      self.instance_variable_set var, val
    end
  end
end

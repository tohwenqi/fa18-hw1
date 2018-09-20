class Foobar
  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    a.map! {|each| each.to_i + 2}
    a = a.select{|each| (each%2 == 0) and (each < 10)}
    a = a.uniq
    sum = a.reduce(:+)
    return sum
  end
end
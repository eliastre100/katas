class FooBarQix
  def compute(str)
    if str.to_f % 3 == 0
      "Foo"
    elsif str.to_f % 5 == 0
      "Bar"
    else
       "Qix"
    end
  end
end
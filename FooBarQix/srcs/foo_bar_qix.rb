class FooBarQix
  MULTIPLE_RESPONSES = [
      { multiple: 3, text: 'Foo' },
      { multiple: 5, text: 'Bar' },
      { multiple: 7, text: 'Qix' }
  ]
  
  def compute(str)
    MULTIPLE_RESPONSES.map do |responses|
      responses[:text] if str.to_f % responses[:multiple] == 0
    end.join('')
  end
end
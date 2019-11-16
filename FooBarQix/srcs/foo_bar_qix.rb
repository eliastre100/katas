class FooBarQix
  MULTIPLE_RESPONSES = [
      { multiple: 3, text: 'Foo' },
      { multiple: 5, text: 'Bar' },
      { multiple: 7, text: 'Qix' }
  ]
  
  def compute(str)
    multiple_texts(str.to_f) + digit_texts(str.to_s)
  end

  private

  def multiple_texts(value)
    MULTIPLE_RESPONSES.map do |responses|
      responses[:text] if value % responses[:multiple] == 0
    end.join
  end

  def digit_texts(value)
    value.split('').map do |char|
      response = MULTIPLE_RESPONSES.detect { |response| response[:multiple] == char.to_i }
      response[:text] unless response.nil?
    end.join
  end
end
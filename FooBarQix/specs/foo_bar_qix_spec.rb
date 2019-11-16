require_relative '../srcs/foo_bar_qix'

RSpec.describe 'FooBarQix' do
  let(:subject) { FooBarQix.new }

  describe 'step 1' do
    it 'should create' do
      expect(subject).not_to be nil
    end

    it 'should return \'Foo\' on 3' do
      expect(subject.compute('3')).to eql "Foo"
    end

    it 'should return \'Bar\' on 5' do
      expect(subject.compute('5')).to eql "Bar"
    end

    it 'should return \'Qix\' on 7' do
      expect(subject.compute('7')).to eql "Qix"
    end
  end
end
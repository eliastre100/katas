require_relative '../srcs/foo_bar_qix'

RSpec.describe 'FooBarQix' do
  let(:subject) { FooBarQix.new }

  describe 'step 1' do
    it 'should create' do
      expect(subject).not_to be nil
    end

    it 'should return \'Foo\' on 3' do
      expect(subject.compute('3')).to include "Foo"
    end

    it 'should return \'Bar\' on 5' do
      expect(subject.compute('5')).to include "Bar"
    end

    it 'should return \'Qix\' on 7' do
      expect(subject.compute('7')).to include "Qix"
    end

    it 'should return \'Foo\' for a multiple of 3' do
      expect(subject.compute('6')).to eql 'Foo'
    end

    it 'sould return \'Bar\' for a multiple of 5' do
      expect(subject.compute('10')).to eql 'Bar'
    end

    it 'should return \'Qix\' for a multiple of 7' do
      expect(subject.compute('14')).to eql 'Qix'
    end

    it 'should not display anything for a number not a valid multiple' do
      expect(subject.compute('1')).to eql ''
    end

    it 'should display \'FooBar\' for a multiple of 3 and 5' do
      expect(subject.compute('60')).to eql 'FooBar'
    end

    it 'should display \'FooQix\' for a multiple of 3 and 7' do
      expect(subject.compute('21')).to eql 'FooQix'
    end

    it 'should display \'BarQix\' for a multiple of 5 and 7' do
      expect(subject.compute('140')).to eql 'BarQix'
    end

    it 'should display \'FooBarQix\' for a multiple of 3, 5 and 7' do
      expect(subject.compute('210')).to eql 'FooBarQix'
    end

    it 'should display \'Foo\' for each 3 digit' do
      expect(subject.compute('13')).to eql 'Foo'
    end

    it 'should display \'Bar\' for each 5 digit' do
      expect(subject.compute('59')).to eql 'Bar'
    end

    it 'should display \'Qix\' for each 7 digit' do
      expect(subject.compute('71')).to eql 'Qix'
    end
  end
end
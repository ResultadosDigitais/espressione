RSpec.describe Espressione::Loader::Adapters::Base do
  subject { described_class.new('foo.txt') }

  describe '.parse_extension' do
    it "register the class as a parser" do
      expect(Espressione::Loader::Adapters).to receive(:register).with(:txt, described_class)
      described_class.parse_extension :txt
    end
  end

  describe '#parse' do
    it "raise abstract method called error" do
      expect { subject.parse }.to raise_error(RuntimeError, 'absctract method called')
    end
  end

  describe '#each' do
    let(:content) { {key: 'value'} }

    it "converts the content and performs the iteration" do
      expect(subject).to receive(:parse).and_return(content)
      expect(content).to receive(:each)

      subject.each(&:to_s)
    end

    it "raise NoMethodError if content is invalid" do
      expect(subject).to receive(:parse).and_return("a string")
      expect { subject.each(&:to_s) }.to raise_error(NoMethodError, "undefined method `each' for \"a string\":String")
    end
  end
end

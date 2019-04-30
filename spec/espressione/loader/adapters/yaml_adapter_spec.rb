RSpec.describe Espressione::Loader::Adapters::YamlAdapter do
  subject { described_class.new('./spec/samples/example.yml') }

  describe ".parse" do
    context "when file is ok" do
      it "parse file content" do
        expect(subject.parse).to be_an Hash
      end
    end

    context "when file is missing" do
      it "raise file not found error" do
        expect { described_class.new('missing.txt').parse }.to raise_error(IOError, 'missing file: `missing.txt`')
      end
    end
  end

end

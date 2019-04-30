RSpec.describe Espressione::Loader::Adapters do
  describe '.parser' do
    context 'when file have a parser' do
      it 'return a new parser instance' do
        response = subject.parser('./spec/samples/example.yml')
        expect(response).to be_a Espressione::Loader::Adapters::Base
      end
    end

    context 'when the file does not have a registered parser' do
      it 'raise an Unknow adapter error' do
        expect do
          subject.parser('/tmp/file.unknow')
        end.to raise_error(RuntimeError, 'Unknow adapter for `/tmp/file.unknow\'')
      end
    end
  end

  describe '.list' do
    it 'return a hash with all registered adapters' do
      expect(subject.list).to be_an Array
      expect(subject.list.first).to be Espressione::Loader::Adapters::YamlAdapter
    end
  end

  describe '.register' do
    it 'register new parser on list' do
      expect { subject.register 'txt', Espressione::Loader::Adapters::Base }.to change{ subject.list.size }.by(1)
    end

    it 'does not duplicate the parser' do
      subject.register 'dup', Espressione::Loader::Adapters::Base
      expect { subject.register 'dup', Espressione::Loader::Adapters::Base }.to change{ subject.list.size }.by(0)
    end
  end

  describe '.ext_type' do
    it 'extract filename extension and convert to Symbol' do
      expect(subject.ext_type('filename.txt')).to eq :txt
    end

    it 'return false if file has not a extension' do
      expect(subject.ext_type('without_extension')).to be false
    end
  end
end

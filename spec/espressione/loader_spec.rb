RSpec.describe Espressione::Loader do
  describe '.load' do
    context 'when load a YAML File' do
      it 'create a method for each key in file' do
        expect(Espressione).to receive(:define_expression).exactly(3).times
        Espressione.load './spec/samples/validations.yml'
      end

      it 'can add a previx' do
        expect(Espressione).to receive(:define_expression).with('an_example', 'example')
        Espressione.load './spec/samples/example.yml', prefix: :an
      end

      it 'can add a sulfix' do
        expect(Espressione).to receive(:define_expression).with('example_two', 'example')
        Espressione.load './spec/samples/example.yml', sulfix: :two
      end
    end

    context 'when file is missing' do
      it 'raise file not found error' do
        expect { Espressione.load 'missing_file.yml' }.to raise_error(IOError, 'missing file: `missing_file.yml`')
      end
    end

    context 'when file is empty ' do
      it 'does not create any method' do
        expect(Espressione).not_to receive(:define_expression)
        Espressione.load './spec/samples/empty.yml'
      end
    end
  end
end

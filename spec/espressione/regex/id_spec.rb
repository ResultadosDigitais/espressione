# frozen_string_literal: true

RSpec.describe Espressione::Regex::ID do
  describe ".uuid" do
    let(:uuid) { "10fb6ea0-36d4-0137-f8ae-78da0c844ee3" }

    it "matches valid uuid value" do
      expect(uuid).to match Espressione.uuid
    end

    context "when invalid" do
      it "doesnt match nil values" do
        expect(nil).not_to match Espressione.uuid
      end

      it "doesnt match empty format" do
        expect("").not_to match Espressione.uuid
      end

      it "doesnt match invalid format" do
        expect(uuid.reverse).not_to match Espressione.uuid
      end
    end
  end
end

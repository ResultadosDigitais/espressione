# frozen_string_literal: true

require "date"

RSpec.describe Espressione::Regex::DateTime do
  describe "DATETIME" do
    let(:datetime) { DateTime.now }

    context "when valid" do
      it "matches format yyyy-mm-ddThh:mm:ss-00:00" do
        expect(datetime.to_s).to match Espressione::DATETIME
      end

      it "matches format yyyy-mm-dd hh:mm:ss -0000" do
        expect(datetime.to_time.to_s).to match Espressione::DATETIME
      end

      it "matches format yyyy-mm-dd hh:mm:ss UTC" do
        expect(datetime.to_time.utc.to_s).to match Espressione::DATETIME
      end
    end

    context "when invalid" do
      it "doesnt match nil values" do
        expect(nil).not_to match Espressione::DATETIME
      end

      it "doesnt match empty format" do
        expect("").not_to match Espressione::DATETIME
      end
    end
  end

  describe "DATE" do
    let(:date) { DateTime.now.to_date }

    context "when valid" do
      it "matches format yyyy-mm-dd" do
        expect(date.to_s).to match Espressione::DATE
      end
    end

    context "when invalid" do
      it "doesnt match nil values" do
        expect(nil).not_to match Espressione::DATE
      end

      it "doesnt match empty format" do
        expect("").not_to match Espressione::DATE
      end
    end
  end
end

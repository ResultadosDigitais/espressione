# frozen_string_literal: true

require "date"

RSpec.describe Espressione::Regex::DateTime do
  describe ".datetime" do
    let(:datetime) { DateTime.now }

    context "when valid" do
      it "matches format yyyy-mm-ddThh:mm:ss-00:00" do
        expect(datetime.to_s).to match Espressione.datetime
      end

      it "matches format yyyy-mm-dd hh:mm:ss -0000" do
        expect(datetime.to_time.to_s).to match Espressione.datetime
      end

      it "matches format yyyy-mm-dd hh:mm:ss UTC" do
        expect(datetime.to_time.utc.to_s).to match Espressione.datetime
      end
    end

    context "when invalid" do
      it "doesnt match nil values" do
        expect(nil).not_to match Espressione.datetime
      end

      it "doesnt match empty format" do
        expect("").not_to match Espressione.datetime
      end
    end
  end

  describe ".date" do
    let(:date) { DateTime.now.to_date }

    context "when valid" do
      it "matches format yyyy-mm-dd" do
        expect(date.to_s).to match Espressione.date
      end
    end

    context "when invalid" do
      it "doesnt match nil values" do
        expect(nil).not_to match Espressione.date
      end

      it "doesnt match empty format" do
        expect("").not_to match Espressione.date
      end
    end
  end

  describe ".time" do
    let(:time) { Time.now.strftime("%H:%M:%S") }

    context "when valid" do
      it "matches format hh:mm:ss" do
        expect(time).to match Espressione.time
      end
    end

    context "when invalid" do
      it "doesnt match nil values" do
        expect(nil).not_to match Espressione.date
      end

      it "doesnt match empty format" do
        expect("").not_to match Espressione.date
      end
    end
  end
end

# frozen_string_literal: true

RSpec.describe Espressione::Regex do
  it "contains expected category regexps" do
    categories = %i[ID DateTime Internet]
    expect(described_class.constants).to match_array(categories)
  end
end

# frozen_string_literal: true

RSpec.describe Espressione::Regex::Internet do
  describe ".ip" do
    let(:ipv4) { Faker::Internet.ip_v4_address }

    it "matches valid ipv4 value" do
      expect(ipv4).to match Espressione.ip
    end
  end

  describe ".ipv6" do
    let(:ipv6) { Faker::Internet.ip_v6_address }

    it "matches valid ipv6 value" do
      expect(ipv6).to match Espressione.ipv6
    end
  end

  describe ".url" do
    let(:url) {   Faker::Internet.url }

    it "matches valid url value" do
      expect(url).to match Espressione.url
    end
  end

  describe ".email" do
    let(:email) { Faker::Internet.email }

    it "matches valid email value" do
      expect(email).to match Espressione.email
    end
  end

  describe ".subdomain" do
    let(:subdomain) { Faker::Internet.domain_name }

    it "matches valid subdomain value" do
      expect(subdomain).to match Espressione.subdomain
    end
  end

  describe ".html_tag" do
    let(:tag) do
      [
        '<a class="test" href="#">Link</a>',
        '<input class="test" type="submit" value="Input Submit" />',
      ].sample
    end

    it "matches valid html tag" do
      expect(tag).to match Espressione.html_tag
    end
  end
end

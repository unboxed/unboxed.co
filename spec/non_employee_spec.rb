require 'spec_helper'
require 'non_employee'

RSpec.describe NonEmployee do
  let(:former_employee) { described_class.new("Chris Holmes") }

  it "returns the employees name" do
    expect(former_employee.name).to eq "Chris Holmes"
  end

  context "implementing methods available on people data" do
    describe "#short_name" do
      it "returns an empty string" do
        expect(former_employee.short_name).to eq ""
      end
    end

    describe "#role" do
      it "returns an empty string" do
        expect(former_employee.role).to eq ""
      end
    end

    describe "#email" do
      it "returns an empty string" do
        expect(former_employee.email).to eq ""
      end
    end

    describe "#bio" do
      it "returns an empty string" do
        expect(former_employee.bio).to eq ""
      end
    end

    describe "#social_networks" do
      it "returns an empty array" do
        expect(former_employee.social_networks).to eq []
      end
    end
  end
end

require "rails_helper"

RSpec.describe Employee, type: :model do
  context "when creating a employee" do
    let(:employee) { build(:employee) }
    let(:employee1) { build(:employee, email: employee.email) }
    let(:employee2) { create(:employee, state: nil) }

    it "should be a valid employee with all attributes" do
      # expect(employee).to be_valid
      # employee.valid?.should == false
      expect(employee.valid?).to eq(true)
    end

    it "Email should not be matched" do
      employee.save
      # debugger
      expect(employee1.save).to eq(false)
    end

    it "sets state to country if state is nil" do
      employee2.save
      expect(employee2.state).to eq(employee2.country)
    end
  end
end

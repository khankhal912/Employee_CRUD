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

  context "When deleting a employee" do
    let(:employee) { create(:employee) }

    let(:front_skill1) { create(:front_end_skill) }
    let(:front_skill2) { create(:front_end_skill, name: "CSS") }
    let(:front_skill3) { create(:front_end_skill, name: "Bootstrap") }

    let(:back_skill1) { create(:back_end_skill) }
    let(:back_skill2) { create(:back_end_skill, name: "Rails") }
    let(:back_skill3) { create(:back_end_skill, name: "Postgresql") }
    let(:back_skill4) { create(:back_end_skill, name: "PHP") }

    let!(:employee_skill1) { create(:employee_skill, employee: employee, skill: front_skill1, rating: 6) }
    let!(:employee_skill2) { create(:employee_skill, employee: employee, skill: front_skill2, rating: 9) }
    let!(:employee_skill3) { create(:employee_skill, employee: employee, skill: front_skill3, rating: 8) }

    let!(:employee_skill4) { create(:employee_skill, employee: employee, skill: back_skill1, rating: 7) }
    let!(:employee_skill5) { create(:employee_skill, employee: employee, skill: back_skill2, rating: 6) }
    let!(:employee_skill6) { create(:employee_skill, employee: employee, skill: back_skill3, rating: 5) }
    let!(:employee_skill7) { create(:employee_skill, employee: employee, skill: back_skill4, rating: 5) }

    it "should destroy all user skills" do
      # debugger
      expect(employee.skills.count).to eq(7)
      employee.destroy
      expect(employee.skills.count).to eq(0)
    end
  end
end

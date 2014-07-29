require 'rails_helper'

describe 'Calculator' do

  context "Arithmetic Operations" do

    it 'should add 5 to stored value 0' do
      calculator = Calculator.new({:state => 0})
      calculator.+(5)
      expect(calculator.state).to eq(5)
    end

    it 'should subtract 5 from stored value 0' do
      calculator = Calculator.new({:state => 10})
      calculator.-(5)
      expect(calculator.state).to eq(5)
    end

    it 'should multiply 5 with stored value 0' do
      calculator = Calculator.new({:state => 1})
      calculator.*(5)
      expect(calculator.state).to eq(5)
    end

    it 'should divide stored value from 5' do
      calculator = Calculator.new({:state => 25})
      calculator./(5)
      expect(calculator.state).to eq(5)
    end

  end
  context "Check Save" do
    it "checks if state is saved after addition" do
      calculator = Calculator.create(state: 0)
      calculator.+(5)
      expect(calculator.reload.state).to eq(5)
    end
    it "checks if state is saved after subtraction" do
      calculator = Calculator.create(state: 0)
      calculator.-(5)
      expect(calculator.reload.state).to eq(-5)
    end
  end
end
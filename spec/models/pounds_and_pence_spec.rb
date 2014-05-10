describe PoundAndPence do
  subject { PoundAndPence.new(input_amount) }

  context "pounds decimal" do
    let(:input_amount) {"1.87"}

    its(:pounds) {should == 1}
    its(:pence) {should == 87}
  end

  context "rounding three decimal places to two" do
    let(:input_amount) {"4.235"}

    its(:pounds) {should == 4}
    its(:pence) {should == 24}
  end
end
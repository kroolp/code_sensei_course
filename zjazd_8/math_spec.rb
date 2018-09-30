RSpec.describe Math do
  describe ".sqrt" do
    context "when argument is natural number" do
      it "calculates proper square root" do
        expect(Math.sqrt(4)).to eq 2
      end
    end

    context "when argument is real number" do
      it "calculates proper square root" do
        expect(Math.sqrt(3.5)).to be > 1.8
      end
    end
  end

  describe '.log2' do
    it "calculates proper logarithm base 2" do
      expect(Math.log2(1)).to eq 0.0
      expect(Math.log2(2)).to eq 1.0
      expect(Math.log2(32768)).to eq 15.0
      expect(Math.log2(65536)).to eq 16.0
    end
  end
end

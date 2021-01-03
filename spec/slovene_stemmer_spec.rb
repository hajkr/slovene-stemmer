RSpec.describe SloveneStemmer do
  it "has a version number" do
    expect(SloveneStemmer::VERSION).not_to be(nil)
  end

  describe 'stem words' do
    it 'stems Triglav to Trigl' do
      expect(SloveneStemmer.stem('Triglav')).to eq("Trigl")
    end
    it 'stems Triglavski to Trigl' do
      expect(SloveneStemmer.stem('Triglavski')).to eq('Trigl')
    end
    it 'stems Triglavska to Trigl' do
      expect(SloveneStemmer.stem('Triglavska')).to eq('Trigl')
    end
    it 'stems Triglavskim to Trigl' do
      expect(SloveneStemmer.stem('Triglavskim')).to eq('Trigl')
    end
    it 'stems Triglavskega to Trigl' do
      expect(SloveneStemmer.stem('Triglavskega')).to eq('Trigl')
    end
  end
end

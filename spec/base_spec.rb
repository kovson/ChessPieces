require_relative '.././lib/base'

RSpec.describe Base do
  let(:base) { described_class.new('d5') }
  
   describe '.new' do
     it 'creates new base piece' do
      expect(base).to be_kind_of Base  
    end
    it 'returns base position' do
      expect(base.position).to eq('d5')
    end
  end

  describe '#position_validation' do
    context 'passed good number of initialize parameters' do
      it 'returns nil' do
        expect(base.position_validation).to be_nil
      end
    end

    context 'passed wrong number of initialize params' do
      let(:wrong_base) { base.new('Adam_Małysz') }
      it 'throws ArgumentError' do
        expect {raise ArgumentError, "ArgumentError: Pass x_axis value and y_values (example: 'd4')" }.
        to raise_error("ArgumentError: Pass x_axis value and y_values (example: 'd4')")
      end
    end
  end

  describe '#start_position_on_board?' do
    context 'passed params are on board' do
      it 'returns nil' do
        expect(base.start_position_on_board?).to be_nil
      end
    end

    context 'passed params are out of board' do
      it 'throws ArgumentError' do
        expect {raise ArgumentError, "Passed values are not included on board - Pass something else" }.
        to raise_error("Passed values are not included on board - Pass something else")
      end
    end
  end

  describe '#x_axis' do
    it 'returns first param of position as number' do 
      expect(base.x_axis).to eq(4)
    end
  end

  describe '#y_axis' do
    it 'returns last param of position' do 
      expect(base.y_axis).to eq(5)
    end
  end

  describe '#vectors' do
    it 'returns array of vectors' do
      expect {raise NotImplementedError, "Please pass vectors from external base" }.
        to raise_error("Please pass vectors from external base")
    end
  end

  describe '#on_board?' do
    it 'returns true if is on board' do
      expect(base.on_board?(base.x_axis, base.y_axis)).to be_truthy
    end
  end
end

require './caesar_cipher'

describe '#caesar_cipher' do
  it 'shifts a word by a number' do
    word = 'abcde'
    result = 'bcdef'
    expect(caesar_cipher(word, 1)).to eql(result)
  end
end
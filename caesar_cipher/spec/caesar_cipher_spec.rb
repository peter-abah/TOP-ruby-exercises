require './caesar_cipher'

describe '#caesar_cipher' do
  it 'shifts a word by a number' do
    word = 'abcde'
    result = 'bcdef'
    expect(caesar_cipher(word, 1)).to eql(result)
  end

  it 'shifts an uppercase word by a number' do
    word = 'STUFFS'
    result = 'XYZKKX'
    expect(caesar_cipher(word, 5)).to eql(result)
  end

  it 'shifts a mixed case word by a number' do
    word = 'aBCDefGh'
    result = 'fGHIjkLm'
    expect(caesar_cipher(word, 5)).to eql(result)
  end

  it 'shifts back to the beginning if number is large' do
    word = 'aBCDefGh'
    result = 'aBCDefGh'
    expect(caesar_cipher(word, 26)).to eql(result)
  end

  it 'shifts a word with extremely large numbers' do
    word = 'aBCDefGh'
    result = 'aBCDefGh'
    expect(caesar_cipher(word, 260)).to eql(result)
  end
end

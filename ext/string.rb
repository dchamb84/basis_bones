class String
  def self.random(length=10)
    chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ'
    random_guff = ''
    length.times { |i| random_guff << chars[rand(chars.length)] }
    random_guff
  end

  def self.random_numbers(length=10)
    chars = '1234567890'
    random_guff = ''
    length.times { |i| random_guff << chars[rand(chars.length)] }
    random_guff
  end
end

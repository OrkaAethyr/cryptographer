class Encrypter
  def initialize str_to_encrypt
    @user_input = str_to_encrypt
  end

  def encrypt()

  end

end





class Decrypter

  def decrypt()

  end

end



class EncryptionEngine

  def encrypt(str_to_encrypt)

  end

end



user_input = gets.chomp

encrypter_imp = Encrypter.new(user_input)


rot_13_hash = {"a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s", "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x", "l" => "y", "m" => "z", "n" => "a", "o" => "b", "p" => "c", "q" => "d", "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i", "w" => "j", "x" => "k", "y" => "l", "z" => "m"}

puts ciphered = user_input.gsub(/[a-z]/, rot_13_hash)

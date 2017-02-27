class Encrypter
  def initialize str_to_encrypt
    @user_input = str_to_encrypt
  end

  def encrypt_call()
    tool = EncryptionEngine.new
    tool.crypto_magic(@user_input)
  end

end


class Decrypter
  def initialize str_to_encrypt
    @user_input = str_to_encrypt
  end
  def decrypt_call()
    tool = EncryptionEngine.new
    tool.crypto_magic(@user_input)
  end

end


class EncryptionEngine
  @@rot_13_hash = {"a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r", "f" => "s", "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x", "l" => "y", "m" => "z", "n" => "a", "o" => "b", "p" => "c", "q" => "d", "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i", "w" => "j", "x" => "k", "y" => "l", "z" => "m"}
  def crypto_magic(str_to_encrypt)
    str_to_encrypt.gsub(/[a-z]/, @@rot_13_hash)
  end

end


puts "Coucou =) ! Voici les commandes disponibles : 'encrypt' - 'decrypt' - 'about' - 'help'"
user_need = gets.chomp
cool_sent = "C'est parti pour "

case user_need
when "e" || "encrypt"
  puts cool_sent+= "l'encryption ! Entrez votre message :"
  user_input = gets.chomp
  if user_input != ""
    puts "Encrypting..."
    encrypter_imp = Encrypter.new(user_input)
    puts ciphered = encrypter_imp.encrypt_call
    puts "Encrypting done !"
  else
  puts "Waouh, j'ai déjà fini ?! Ah euh...Non en fait, je n'ai rien reçu !"
  end
when "d" || "decrypt"
  puts cool_sent+= "la decryptiptiptation ! Entrez votre message :"
  user_input = gets.chomp
  if user_input != ""
    puts "Decrypting..."
    decrypter_imp = Decrypter.new(user_input)
    puts deciphered = decrypter_imp.encrypt_call
    puts "Decrypting done !"
  else
  puts "Waouh, j'ai déjà fini ?! Ah euh...Non en fait, je n'ai rien reçu !"
  end
when "a" || "about"
  puts "Ceci est une implémentation du kata cryptographer, vous pouvez utiliser le ROT-13 pour que personne (bon, peut être pas personne, le ROT-13 est assez connu quand même !) ne puisse comprendre votre message ! Si vous voulez en savoir plus sur le ROT-13 (vous voulez sûrement =D) : https://fr.wikipedia.org/wiki/ROT13 . "
when "h" || "help"
  puts "Entrez 'encrypt' pour transformer votre message, 'decrypt' pour décrypter un message ayant été transformé en utilisant le ROT-13, 'about' si vous souhaitez en savoir plus sur tout ça et 'help' si vous avez besoin d'aide (si vous lisez ce message, vous avez très probablement tapé help =D )"
end

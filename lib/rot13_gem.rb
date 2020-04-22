require "rot13_gem/version"

module Rot13Gem
  
  def rot13
    alphabet = ("a".."z").to_a + ("A".."Z").to_a
    cipher = ("n".."z").to_a + ("a".."m").to_a + ("N".."Z").to_a + ("A".."M").to_a
    rot13 = Hash.new
    alphabet.each_with_index{|letter, index| rot13[letter] = cipher[index]}
    self.gsub(/[a-zA-Z]/, rot13)
  end
  
  class String
    include Rot13Gem
  end

end

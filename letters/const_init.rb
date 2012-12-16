Maglev.persistent {

class Letter
  attr_reader :char

  def initialize(char)
    @char = char
  end

  def inspect
    "'#{char}'"
  end
end

}
Maglev.commit_transaction

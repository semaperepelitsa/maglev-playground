Maglev.persistent {

class Letter
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def inspect
    "'#{name}'"
  end
end

}
Maglev.commit_transaction

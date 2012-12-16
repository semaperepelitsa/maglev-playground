Maglev.persistent {

Maglev::PERSISTENT_ROOT[:letters] = ('a'..'z').map { |c| Letter.new(c) }

}
Maglev.commit_transaction

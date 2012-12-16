Maglev.persistent {

Maglev::PERSISTENT_ROOT[:old_letters] = old = Maglev::PERSISTENT_ROOT[:letters]
Maglev::PERSISTENT_ROOT[:letters] = old.map{ |l| Letter.new(l.char) }

}
Maglev.commit_transaction

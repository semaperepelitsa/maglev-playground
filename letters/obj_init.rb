Maglev.persistent do
  Maglev::PERSISTENT_ROOT[:letters] << Letter.new("a")
end
Maglev.commit_transaction

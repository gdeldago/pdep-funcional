init' lista = lista !! ((length lista) - 1) 

init'' lista = drop ((length lista) - 1) lista

init''' lista = take 1 (reverse lista)

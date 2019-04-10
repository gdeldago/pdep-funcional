--nivelDeTerror = length

energiaDeGrito (onomatopeya, intensidad, mojoLaCama) 
  | mojoLaCama = (length onomatopeya) * intensidad * intensidad
  | otherwise  = (length onomatopeya) * 3 + intensidad

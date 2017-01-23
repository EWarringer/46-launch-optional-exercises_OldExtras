crypt_of_civilization = ["A Comptometer", "A box of phonographic records", "A plastic savings bank", "A set of scales", "A Toast-O-Lator", "A sample of aluminum foil", "A Donald Duck doll", "container of beer", "Lionel model train set", "Ingraham pocket watch"]

counter = 0
while counter < crypt_of_civilization.length
  puts crypt_of_civilization[counter]
  counter += 1
end

crypt_of_civilization.each do |i|
  puts i
end

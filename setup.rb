#puts Dir.pwd
puts 'installing cool atom packages'
system 'apm install autoclose-html'
system 'apm install pigments'
system 'apm install seti-ui'
Dir.chdir
puts 'Your are working in the...'
puts Dir.pwd
file = File.new('./.pairs', 'w')
file.close
puts 'installing atom packages....'
puts 'apm install autoclose-html'
puts 'apm install seti-ui'
puts 'creating .pairs file....'
puts 'touch ~/.pairs'
# puts 'filling .pairs file....'
# puts 'echo "pairs:" >> ~/.pairs'
# puts 'echo "  dm: Dawson Mortenson" >> ~/.pairs'
# puts 'echo "  edlf: Enrique de la Fuente" >> ~/.pairs'
# puts 'echo "email:" >> ~/.pairs'
# puts 'echo "  dm: dawson.mortenson@gmail.com" >> ~/.pairs'
# puts 'echo "  edlf: queenrique@gmail.com" >> ~/.pairs'
# puts 'done...'
puts 'opening the .pairs file....'
target = open(file, 'w')

puts 'filling the .pairs file....'
target.write("pairs:")
target.write("\n")
target.write("  dm: Dawson Mortenson")
target.write("\n")
target.write("  edlf: Enrique de la Fuente")
target.write("\n")
target.write("email:")
target.write("\n")
target.write("  dm: dawson.mortenson@gmail.com")
target.write("\n")
target.write("  edlf: queenrique@gmail.com")
puts 'done....'

puts 'installing cool atom packages'

# This package autocloses tags
system 'apm install autoclose-html'

# This package displays the colors of RGB and Hex codes
system 'apm install pigments'

# This is an optional theme for atom that has neat icons for different file types
# @@@IMPORTANT@@@ To enable the theme in atom you have to go to preferences -> themes -> change the UI Theme to 'Seti'
system 'apm install seti-ui'


Dir.chdir # I think this changes the working directory to the ~/
# puts 'Your are working in the...'
# puts Dir.pwd

puts "Enter the first person's initials: "
initials1 = gets.chomp
puts "Enter the first person's full name: "
human1 = gets.chomp
puts "Enter the first person's email: "
email1 = gets.chomp

puts "Enter the second person's initials: "
initials2 = gets.chomp
puts "Enter the second person's full name: "
human2 = gets.chomp
puts "Enter the second person's email: "
email2 = gets.chomp

# Defines a var that creates and points to a .pairs file
file = File.new('./.pairs', 'w')

# file.close
# puts 'creating .pairs file....'
# puts 'touch ~/.pairs'

puts 'opening the .pairs file....'
target = open(file, 'w')

puts 'filling the .pairs file....'
target.write("pairs:")
target.write("\n")
target.write("  #{initials1}: #{human1}")
target.write("\n")
target.write("  #{initials2}: #{human2}")
target.write("\n")
target.write("email:")
target.write("\n")
target.write("  #{initials1}: #{email1}")
target.write("\n")
target.write("  #{initials2}: #{email2}")
puts 'done....'

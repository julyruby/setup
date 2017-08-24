puts 'installing cool atom packages'

# This package autocloses tags
system 'apm install autoclose-html'

# This package displays the colors of RGB and Hex codes
system 'apm install pigments'

# This is an optional theme for atom that has neat icons for different file types
# @@@IMPORTANT@@@ To enable the theme in atom you have to go to preferences -> themes -> change the UI Theme to 'Seti'
# system 'apm install seti-ui'

# ========> Unnecessary thanks to the system function that lets me specify the directory ~
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

puts "downloading bootstrap"
# curls github's server for the bootstrap zip file. The k flag makes sure the connection is secure, the L follows redirects to ensure the actual zip is downloaded, and o names the output file.
system 'curl -Lk https://github.com/twbs/bootstrap/releases/download/v3.3.7/bootstrap-3.3.7-dist.zip -o ~/Desktop/bootstrap3.zip'
system 'curl -Lk https://github.com/twbs/bootstrap/releases/download/v4.0.0-beta/bootstrap-4.0.0-beta-dist.zip -o ~/Desktop/bootstrap4.zip'

system 'unzip ~/Desktop/bootstrap3.zip -d ~/Desktop/bootstrap-3.3.7'
system 'unzip ~/Desktop/bootstrap4.zip -d ~/Desktop/bootstrap-4.0.0'


system 'cp ~/Desktop/bootstrap-3.3.7/bootstrap-3.3.7-dist/css/bootstrap.css ~/Desktop/bootstrap-3.3.7.css'
system 'cp ~/Desktop/bootstrap-4.0.0/css/bootstrap.css ~/Desktop/bootstrap.css'


puts 'downloading jQuery'
system 'curl -Lk https://code.jquery.com/jquery-3.2.1.js -o ~/Desktop/jquery-3.2.1.js'

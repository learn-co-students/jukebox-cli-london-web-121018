songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept teh following commands: 
  - help : displays this help message
  - list: displays a list of songs you can play
  - play : lets you choose a song to play
  - exit: exits this program"
end 

def list(songs) 
  songs.each_with_index do |song_title, index| 
   puts "#{index + 1}. #{song_title}"
 end 
end 
  
def play(songs)
  puts "Please enter a song name or number: "
  answer = gets.chomp 
    if songs.include?(answer) 
    puts "Playing #{answer}"
  elsif (1..9).to_a.include?(answer.to_i)
    puts "Playing #{songs[answer.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  user_response = ''
  help 
  while user_response
  puts "Please enter a command: "
  user_response = gets.chomp
  if user_response == "list"
    list
  elsif user_response == "play"
    list(songs)
    play
  elsif user_response == "help"
    help 
  elsif user_response == "exit"
    exit_jukebox
    break
  end 
end 
end 



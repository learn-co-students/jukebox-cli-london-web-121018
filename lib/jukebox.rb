def songs
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
end

def help
  puts "
  I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  songchoice = gets.chomp
  response = ""
  songs.each_with_index do |song, index|
    if (songchoice.to_i-1) == (index) || songchoice == song
      response = "Playing #{song}"
    else
      if response ==""
      response = "Invalid input, please try again"
      end
    end
  end
  puts response
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  songs
  help
  puts "Please enter a command:"
  choice = gets.chomp
  if choice == "exit"
    exit_jukebox
  elsif choice == "list"
    list(songs)
    choice = gets.chomp
  elsif choice == "play"
    play(songs)
    choice = gets.chomp
  elsif choice == "help"
    help
  end
end

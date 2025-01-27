require 'pry'

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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  #use each with index for this.
  songs.each_with_index() do |song, index|
    puts "#{index + 1}: #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again."
  end
end




def exit_jukebox
  puts "Goodbye"
end

def run(help)
  help
  input = nil
  until input == "exit"
    puts "Please enter a command:"
    input = gets.chomp
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end
    puts input
    exit_jukebox if input == "exit"
  end
end

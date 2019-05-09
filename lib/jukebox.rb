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

def list(song)
  puts "1. Phoenix - 1901
  2. Tokyo Police Club - Wait Up
  3. Sufjan Stevens - Too Much
  4. The Naked and the Famous - Young Blood
  5. (Far From) Home - Tiga
  6. The Cults - Abducted
  7. Phoenix - Consolation Prizes
  8. Harry Chapin - Cats in the Cradle
  9. Amos Lee - Keep It Loose, Keep It Tight"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  if songs.include?(song_choice)
    puts "Playing #{song_choice}"  
  elsif song_choice.to_i != 0
    song_num = song_choice.to_i
    if song_num < songs.size
      puts "Playing #{songs[song_num-1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  loop do
    response = gets.chomp.downcase
      if response == "list"
        list(songs)
      elsif response == "play"
        play(song)
      elsif response == "help"
        help
      elsif response == "exit"
        exit_jukebox
        break
      end
  end
end


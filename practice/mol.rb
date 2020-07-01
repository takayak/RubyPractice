# Mols = {
#   "a" => '.-',
#   "b" => "-...",
#   "c" => "-.-.",
#   "d" => "-..",
#   "e" => ".",
#   "f" => "..-.",
#   "g" => "--.",
#   "h" => "....",
#   "i" => "..",
#   "j" => ".---",
#   "k" => "-.-",
#   "l" => ".-..",
#   "m" => "--",
#   "n" => "-.",
#   "o" => "---",
#   "p" => ".--.",
#   "q" => "--.-",
#   "r" => ".-.",
#   "s" => "...",
#   "t" => "-",
#   "u" => "..-",
#   "v" => "...-",
#   "w" => ".--",
#   "x" => "-..-",
#   "y" => "-.--",
#   "z" => "--.."
# }

Mols = 
{"a": ".-",
"b":  "-...",
"c":  "-.-.",
"d":  "-..",
"e":  ".",
"f":  "..-.",
"g":  "--.",
"h":  "....",
"i":  "..",
"j":  ".---",
"k":  "-.-",
"l":  ".-..",
"m":  "--",
"n":  "-.",
"o":  "---",
"p":  ".--.",
"q":  "--.-",
"r":  ".-.",
"s":  "...",
"t":  "-",
"u":  "..-",
"v":  "...-",
"w":  ".--",
"x":  "-..-",
"y":  "-.--",
"z":  "--.."}

Mols2 = {
  ".-"    => "a",
  "-..."  => "b",
  "-.-."  => "c",
  "-.."   => "d",
  "."     => "e",
  "..-."  => "f",
  "--."   => "g",
  "...."  => "h",
  ".."    => "i",
  ".---"  => "j",
  "-.-"   => "k",
  ".-.."  => "l",
  "--"    => "m",
  "-."    => "n",
  "---"   => "o",
  ".--."  => "p",
  "--.-"  => "q",
  ".-."   => "r",
  "..."   => "s",
  "-"     => "t",
  "..-"   => "u",
  "...-"  => "v",
  ".--"   => "w",
  "-..-"  => "x",
  "-.--"  => "y",
  "--.."  => "z" 
}




def change_to_mols_1(eng_word)
  Mols[eng_word[0]]
end
def change_to_mols_2(eng_word)
  change_to_mols_1(eng_word) + Mols[eng_word[1]]
end
def change_to_mols_3(eng_word)
  change_to_mols_2(eng_word) +Mols[eng_word[2]]
end
def change_to_mols_4(eng_word)
  change_to_mols_3(eng_word) + Mols[eng_word[3]]
end
def change_to_mols_5(eng_word)
  change_to_mols_4(eng_word) + Mols[eng_word[4]]
end
def change_to_mols_6(eng_word)
  change_to_mols_5(eng_word) + Mols[eng_word[5]]
end
def change_to_mols_7(eng_word)
  change_to_mols_6(eng_word)+Mols[eng_word[6]]
end
def change_to_mols_8(eng_word)
  change_to_mols_7(eng_word)+Mols[eng_word[7]]
end
def change_to_mols_9(eng_word)
  change_to_mols_8(eng_word)+Mols[eng_word[8]]
end
def change_to_mols_10(eng_word)
  change_to_mols_9(eng_word)+Mols[eng_word[9]]
end
def change_to_mols_11(eng_word)
  change_to_mols_10(eng_word)+Mols[eng_word[10]]
end
def change_to_mols_12(eng_word)
  change_to_mols_11(eng_word)+Mols[eng_word[11]]
end
def change_to_mols_13(eng_word)
  change_to_mols_12(eng_word)+Mols[eng_word[12]]
end
def change_to_mols_14(eng_word)
  change_to_mols_13(eng_word)+Mols[eng_word[13]]
end
def change_to_mols_15(eng_word)
  change_to_mols_14(eng_word)+Mols[eng_word[14]]
end
def change_to_mols_16(eng_word)
  change_to_mols_15(eng_word)+Mols[eng_word[15]]
end
def change_to_mols_17(eng_word)
  change_to_mols_16(eng_word)+Mols[eng_word[16]]
end
def change_to_mols_18(eng_word)
  change_to_mols_17(eng_word)+Mols[eng_word[17]]
end

def change_to_mols_19(eng_word)
  change_to_mols_18(eng_word)+Mols[eng_word[18]]
end
def change_to_mols_20(eng_word)
  change_to_mols_19(eng_word)+Mols[eng_word[19]]
end
def change_to_mols_21(eng_word)
  change_to_mols_20(eng_word)+Mols[eng_word[20]]
end
def change_to_mols_22(eng_word)
  change_to_mols_21(eng_word)+Mols[eng_word[21]]
end
def change_to_mols_23(eng_word)
  change_to_mols_22(eng_word)+Mols[eng_word[22]]
end


# while true do
#   puts '文字を入力してください'
eng_word = gets.chomp

# 符号文字列の多いものから変換
# z y x v q p l j h f c b / w u s r o k g d / n m i a
word = eng_word.gsub("--..","z").gsub("-.--","y").gsub("-..-","x").gsub("...-","v").gsub("--.-","q").gsub(".--.","p").gsub(".-..","l").gsub(".---","j").gsub("....","h").gsub("..-.","f").gsub("-.-.","c").gsub("-...","b").gsub(".--","w").gsub("..-","u").gsub("...","s").gsub(".-.","r").gsub("---","o").gsub("-.-","k").gsub("--.","g").gsub("-..","d").gsub("-.","n").gsub("--","m").gsub("..","i").gsub(".-","a").gsub("-","t").gsub(".","e")
# word = eng_word.gsub(".-","a").gsub("-...","b").gsub("-.-.","c").gsub("-..","d").gsub(".","e").gsub("..-.","f").gsub("--.","g").gsub("....","h").gsub("..","i").gsub(".---","j").gsub("-.-","k").gsub(".-..","l").gsub("--","m").gsub("-.","n").gsub("---","o").gsub(".--.","p").gsub("--.-","q").gsub(".-.","r").gsub("...","s").gsub("-","t").gsub("..-","u").gsub("...-","v").gsub(".--","w").gsub("-..-","x").gsub("-.--","y").gsub("--..","z")
p word
# p Mols[eng_word[0]]
# p eng_word
# p Mols[eng_word]

# if eng_word.size == 1
#   p change_to_mols_1(eng_word)
# elsif eng_word.size == 2
#   p change_to_mols_2(eng_word)
# elsif eng_word.size == 3
#   p change_to_mols_3(eng_word)
# elsif eng_word.size == 4
#   p change_to_mols_4(eng_word)
# elsif eng_word.size == 5
#   p change_to_mols_5(eng_word)
# elsif eng_word.size == 6
#   p change_to_mols_6(eng_word)
# elsif eng_word.size == 7
#   p change_to_mols_7(eng_word)
# elsif eng_word.size == 8
#   p change_to_mols_8(eng_word)
# elsif eng_word.size == 9
#   p change_to_mols_9(eng_word)
# elsif eng_word.size == 10
#   p change_to_mols_10(eng_word)
# elsif eng_word.size == 11
#   p change_to_mols_11(eng_word)
# elsif eng_word.size == 12
#   p change_to_mols_12(eng_word)
# elsif eng_word.size == 13
#   p change_to_mols_13(eng_word)
# elsif eng_word.size == 14
#   p change_to_mols_14(eng_word)
# elsif eng_word.size == 15
#   p change_to_mols_15(eng_word)
# elsif eng_word.size == 16
#   p change_to_mols_16(eng_word)
# elsif eng_word.size == 17
#   p change_to_mols_17(eng_word)
# elsif eng_word.size == 18
#   p change_to_mols_18(eng_word)
# elsif eng_word.size == 19
#   p change_to_mols_19(eng_word)
# elsif eng_word.size == 20
#   p change_to_mols_20(eng_word)
# elsif eng_word.size == 21
#   p change_to_mols_21(eng_word)
# elsif eng_word.size == 22
#   p change_to_mols_22(eng_word)
# elsif eng_word.size == 23
#   p change_to_mols_23(eng_word)
# end

# p eng_word
def change_to_en_1(eng_word)
  Mols2[eng_word]
end
# p change_to_en_1(eng_word)
# end
# mols = {
#   "A" => ".-",
#   "B" => "-...",
#   "C" => "-.-.",
#   "D" => "-..",
#   "E" => ".",
#   "F" => "..-.",
#   "G" => "--.",
#   "H" => "....",
#   "I" => "..",
#   "J" => ".---",
#   "K" => "-.-",
#   "L" => ".-..",
#   "M" => "--",
#   "N" => "-.",
#   "O" => "---",
#   "P" => ".--.",
#   "Q" => "--.-",
#   "R" => ".-.",
#   "S" => "...",
#   "T" => "-",
#   "U" => "..-",
#   "V" => "...-",
#   "W" => ".--",
#   "X" => "-..-",
#   "Y" => "-.--",
#   "Z" => "--.."
#   }

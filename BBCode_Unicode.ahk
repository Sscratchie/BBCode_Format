;The BBCode section
SetWorkingDir  A_ScriptDir
#SingleInstance Force
try
{
FileDelete  "Text.txt"
FileDelete  "Temp.txt"
}
 SelectedFile := FileSelect(3, , "Open a file", "Text Documents (*.txt; *.doc)") 
  Loop read,  SelectedFile ; Read a line from .txt file
 {
 If Length := StrLen(A_LoopReadLine) = "0" ; If the line is blank
{
 If FileExist("Temp.txt")
{
FileAppend "`n" , "Text.txt", "UTF-8" ; `n = new line
TextTemp := FileRead("Temp.txt")
FileAppend TextTemp, "Text.txt", "UTF-8"  ; append the / commands
FileDelete  "Temp.txt"
 FileAppend "`n `n" , "Text.txt", "UTF-8"
}
Else 
Goto Signature

 continue
 }
 IB := InputBox("Please enter a text size 20 -200 `n`n`n"  A_LoopReadLine)
FileAppend "[size=" IB.value "]", "Text.txt", "UTF-8"
FileAppend "[/size]", "Temp.txt", "UTF-8"

TC := InputBox("Please enter a BBCode color or a Hex including the hash `n`n`n"  A_LoopReadLine)
FileAppend "[color=" TC.value "]", "Text.txt"
FileAppend "[/color]", "Temp.txt", "UTF-8"

CN := InputBox("Please enter C to center or enter to continue `n`n`n"  A_LoopReadLine)
If CN.value = "C"
{
 FileAppend "[center]", "Text.txt", "UTF-8"
 FileAppend "[/center]", "Temp.txt", "UTF-8"
 }
/*   FileAppend A_LoopReadLine, "Text.txt", "UTF-8"
 continue
  This is the end of the BBCode formatting. */

; Converts to Unicode.  
FS := InputBox("Please enter a Font number `n1 1 𝖲𝖺𝗇𝗌 `n 2 𝗦𝗮𝗻𝘀 𝗕𝗼𝗹𝗱 `n 3 𝘚𝘢𝘯𝘴 𝘐𝘵𝘢𝘭𝘪𝘤 `n 4 𝙎𝙖𝙣𝙨 𝙄𝙩𝙖𝙡𝙞𝙘 𝘽𝙤𝙡𝙙 `n 5 𝒮𝒸𝓇𝒾𝓅𝓉 `n 6 𝓢𝓬𝓻𝓲𝓹𝓽 𝓑𝓸𝓵𝓭 `n 7 𝔉𝔯𝔞𝔨𝔱𝔲𝔯 `n 8 𝕱𝖗𝖆𝖐𝖙𝖚𝖗 𝕭𝖔𝖑𝖉", "Font", "w200 h240", )
FileAppend "`n" , "Text.txt", "UTF-8"
Loop parse, A_LoopReadLine
If FS.value = "1"
{
 If (A_LoopField  == "A")
	FileAppend "𝙰", "Text.txt", "UTF-8"

	        Else If (A_LoopField  == "B")
         FileAppend "𝙱", "Text.txt", "UTF-8"

Else If (A_LoopField  == "C")
         FileAppend "𝙲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝙳", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "𝙴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "𝙵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝙶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "𝙷", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "𝙸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝙹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝙺", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "𝙻", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "𝙼", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝙽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝙾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝙿", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝚀", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "𝚁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝚂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝚃", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "U") 
         FileAppend "𝚄", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "V") 
         FileAppend "𝚅", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "W") 
         FileAppend "𝚆", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "X") 
         FileAppend "𝚇", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Y") 
         FileAppend "𝚈", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Z") 
         FileAppend "𝚉", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "a") 
         FileAppend "𝚊", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "b")
         FileAppend "𝚋", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "c") 
         FileAppend "𝚌", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "d") 
         FileAppend "𝚍", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "𝚎", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝚏", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "𝚐", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝚑", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝚒", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝚓", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝚔", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝚕", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝚖", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝚗", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "𝚘", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝚙", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝚚", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝚛", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝚜", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝚝", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝚞", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝚟", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝚠", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝚡", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝚢", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝚣", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend " 𝟣", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟤", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟥", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟦", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟧", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟨", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟩", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟪", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟫", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟢", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

            Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "\")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

       Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == " ")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

continue
}
Else If FS.value = "2"
{    
     If (A_LoopField  == "A")
       FileAppend "𝗔", "Text.txt", "UTF-8"
  
        Else If (A_LoopField  == "B")
         FileAppend "𝗕", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "C")
         FileAppend "𝗖", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝗗", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "𝗘", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "𝗙", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝗚", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "𝗛", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "𝗜", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝗝", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝗞", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "𝗟", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "𝗠", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝗡", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝗢", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝗣", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝗤", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "𝗥", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝗦", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝗧", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "U") 
         FileAppend "𝗨", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "V") 
         FileAppend "𝗩", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "W") 
         FileAppend "𝗪", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "X") 
         FileAppend "𝗫", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Y") 
         FileAppend "𝗬", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Z") 
         FileAppend "𝗭", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "a") 
         FileAppend "𝗮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "b")
         FileAppend "𝗯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "c") 
         FileAppend "𝗰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "d") 
         FileAppend "𝗱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "𝗲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝗳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "𝗴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝗵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝗶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝗷", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝗸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝗹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝗺", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝗻", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "𝗼", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝗽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝗾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝗿", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝘀", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝘁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝘂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝘃", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝘄", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝘅", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝘆", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝘇", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "\")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 
Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

	Else If (A_LoopField  == " ")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
		 continue
}
Else If FS.value = "5"
{
    
   If (A_LoopField  == "A")
	FileAppend "𝒜", "Text.txt", "UTF-8"

	        Else If (A_LoopField  == "B")
         FileAppend "ℬ", "Text.txt", "UTF-8"

Else If (A_LoopField  == "C")
         FileAppend "𝒞", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝒟", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "ℰ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "ℱ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝒢", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "ℋ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "ℐ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝒥", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝒦", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "ℒ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "ℳ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝒩", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝒪", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝒫", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝒬", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "ℛ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝒮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝒯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "U") 
         FileAppend "𝒰", "Text.txt", "UTF-8"


        Else If (A_LoopField  == "V") 
         FileAppend "𝒱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "W") 
         FileAppend "𝒲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "X") 
         FileAppend "𝒳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Y") 
         FileAppend "𝒴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Z") 
         FileAppend "𝒵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "a") 
         FileAppend "𝒶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "b")
         FileAppend "𝒷", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "c") 
         FileAppend "𝒸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "d") 
         FileAppend "𝒹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "ℯ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝒻", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "ℊ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝒽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝒾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝒿", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝓀", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝓁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝓂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝓃", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "ℴ", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝓅", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝓆", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝓇", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝓈", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝓉", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝓊", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝓋", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝓌", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝓍", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝓎", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝓏", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
        FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "\")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == " ")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"
 continue
	}
Else If FS.value == "6"
{
   If (A_LoopField  == "A")
	FileAppend "𝓐", "Text.txt", "UTF-8"

	        Else If (A_LoopField  == "B")
         FileAppend "𝓑", "Text.txt", "UTF-8"

Else If (A_LoopField  == "C")
         FileAppend "𝓒", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝓓", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "𝓔", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "𝓕", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝓖", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "𝓗", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "𝓘", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝓙", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝓚", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "𝓛", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "𝓜", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝓝", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝓞", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝓟", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝓠", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "𝓡", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝓢", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝓣", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "U") 
         FileAppend "𝓤", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "V") 
         FileAppend "𝓥", "Text.txt", "UTF-8"
    
	Else If (A_LoopField  == "W") 
         FileAppend "𝓦", "Text.txt", "UTF-8"
    
	Else If (A_LoopField  == "X") 
         FileAppend "𝓧", "Text.txt", "UTF-8"
   
   Else If (A_LoopField  == "Y") 
         FileAppend "𝓨", "Text.txt", "UTF-8"
 
 Else If (A_LoopField  == "Z") 
         FileAppend "𝓩", "Text.txt", "UTF-8"
   
   Else If (A_LoopField  == "a") 
         FileAppend "𝓪", "Text.txt", "UTF-8"
 
 Else If (A_LoopField  == "b")
         FileAppend "𝓫", "Text.txt", "UTF-8"
 
 Else If (A_LoopField  == "c") 
         FileAppend "𝓬", "Text.txt", "UTF-8"
 
 Else If (A_LoopField  == "d") 
         FileAppend "𝓭", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "𝓮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝓯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "𝓰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝓱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝓲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝓳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝓴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝓵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝓶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝓷", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "𝓸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝓹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝓺", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝓻", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝓼", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝓽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝓾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝓿", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝔀", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝔁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝔂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝔃", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
        FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == "\")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"


 Else If (A_LoopField  == " ")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"
    }
Else If FS.value == "3"
{
    
 If (A_LoopField  == "A")
	FileAppend "𝐴", "Text.txt", "UTF-8"

	        Else If (A_LoopField  == "B")
         FileAppend "𝐵", "Text.txt", "UTF-8"

Else If (A_LoopField  == "C")
         FileAppend "𝐶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝐷", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "𝐸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "𝐹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝐺", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "𝐻", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "𝐼", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝐽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝐾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "𝐿", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "𝑀", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝑁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝑂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝑃", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝑄", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "𝑅", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝑆", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝑇", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "U") 
         FileAppend "𝑈", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "V") 
         FileAppend "𝑉", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "W") 
         FileAppend "𝑊", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "X") 
         FileAppend "𝑋", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Y") 
         FileAppend "𝑌", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Z") 
         FileAppend "𝑍", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "a") 
         FileAppend "𝑎", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "b")
         FileAppend "𝑏", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "c") 
         FileAppend "𝑐", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "d") 
         FileAppend "𝑑", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "𝑒", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝑓", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "𝑔", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝘩", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝑖", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝑗", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝑘", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝑙", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝑚", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝑛", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "𝑜", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝑝", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝑞", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝑟", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝑠", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝑡", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝑢", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝑣", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝑤", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝑥", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝑦", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝑧", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
        FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "\")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == " ")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"
}
Else If FS.value == "4"
{
    
 If (A_LoopField  == "A")
	FileAppend "𝑨", "Text.txt", "UTF-8"

	        Else If (A_LoopField  == "B")
         FileAppend "𝑩", "Text.txt", "UTF-8"
Else If (A_LoopField  == "C")
         FileAppend "𝑪", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝑫", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "𝐸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "𝑭", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝑮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "𝑯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "𝑰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝑱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝑲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "𝑳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "𝑴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝑵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝑶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝑷", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝑸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "𝑹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝑺", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝑻", "Text.txt", "UTF-8"

 	Else If (A_LoopField  == "U") 
         FileAppend "𝑼", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "V") 
         FileAppend "𝑽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "W") 
         FileAppend "𝑾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "X") 
         FileAppend "𝑿", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Y") 
         FileAppend "𝒀", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Z") 
         FileAppend "𝒁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "a") 
         FileAppend "𝒂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "b")
         FileAppend "𝒃", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "c") 
         FileAppend "𝒄", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "d") 
         FileAppend "𝒅", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "𝒆", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝒇", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "𝒈", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝒉", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝒊", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝒋", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝒌", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝒍", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝒎", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝒏", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "𝒐", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝒑", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝒒", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝒓", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝒔", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝒕", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝒖", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝒗", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝒘", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝒙", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝒚", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝒛", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
        FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
         Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "\")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == " ")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"
}
Else If FS.value == "7"
{
    
  If (A_LoopField  == "A")
	FileAppend "𝕬", "Text.txt", "UTF-8"

	        Else If (A_LoopField  == "B")
         FileAppend "𝕭", "Text.txt", "UTF-8"

Else If (A_LoopField  == "C")
		FileAppend "𝕮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "D") 
         FileAppend "𝕯", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "E")
         FileAppend "𝕰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "F") 
         FileAppend "𝕱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "G")
         FileAppend "𝕲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "H")
         FileAppend "𝕳" , "Text.txt", "UTF-8"

    Else If (A_LoopField  == "I")
         FileAppend "𝕴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "J") 
         FileAppend "𝕵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "K") 
         FileAppend "𝕶", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "L") 
         FileAppend "𝕷", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "M") 
         FileAppend "𝕸", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "N") 
         FileAppend "𝕹", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "O") 
         FileAppend "𝕺", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "P") 
         FileAppend "𝕻", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Q") 
         FileAppend "𝕼", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "R") 
         FileAppend "𝕽", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "S") 
         FileAppend "𝕾", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "T") 
         FileAppend "𝕿", "Text.txt", "UTF-8"

    	Else If (A_LoopField  == "U") 
         FileAppend "𝖀", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "V") 
         FileAppend "𝖁", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "W") 
         FileAppend "𝖂", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "X") 
         FileAppend "𝖃", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Y") 
         FileAppend "𝖄", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "Z") 
         FileAppend "𝖅", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "a") 
         FileAppend "𝖆", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "b")
         FileAppend "𝖇", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "c") 
         FileAppend "𝖈", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "d") 
         FileAppend "𝖉", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "e") 
         FileAppend "𝖊", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "f") 
         FileAppend "𝖋", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "g") 
         FileAppend "𝖌", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "h") 
         FileAppend "𝖍", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "i") 
         FileAppend "𝖎", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "j") 
         FileAppend "𝖏", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "k") 
         FileAppend "𝖐", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "l") 
         FileAppend "𝖑", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "m") 
         FileAppend "𝖒", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "n") 
         FileAppend "𝖓", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "o") 
         FileAppend "𝖔", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "p") 
         FileAppend "𝖕", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "q") 
         FileAppend "𝖖", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "r") 
         FileAppend "𝖗", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "s") 
         FileAppend "𝖘", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "t") 
         FileAppend "𝖙", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "u") 
         FileAppend "𝖚", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "v") 
         FileAppend "𝖛", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "w") 
         FileAppend "𝖜", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "x") 
         FileAppend "𝖝", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "y") 
         FileAppend "𝖞", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "z") 
         FileAppend "𝖟", "Text.txt", "UTF-8"

        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"

     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"

    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"

	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == ":")
        FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "{")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

     Else If (A_LoopField  == "}")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
      Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

      Else If (A_LoopField  == "|")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == "<")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "\")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

 Else If (A_LoopField  == " ")
         FileAppend  A_LoopField , "Text.txt", "UTF-8"
}
Else If FS.value == "8"
{    
 If (A_LoopField  == "A")
	FileAppend "𝔄", "Text.txt", "UTF-8"
	
	Else If (A_LoopField  == "B")
          FileAppend "𝔅", "Text.txt", "UTF-8"
	
Else If (A_LoopField  == "C")
         FileAppend "ℭ", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "D") 
         FileAppend "𝔇", "Text.txt", "UTF-8"
    
        Else If (A_LoopField  == "E")

         FileAppend "𝔈", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "F") 
         FileAppend "𝔉", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "G")
         FileAppend "𝔊", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "H")
         FileAppend "ℌ", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "I")
         FileAppend "ℑ", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "J") 
         FileAppend "𝔍", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "K") 
         FileAppend "𝔎", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "L") 
         FileAppend "𝔏", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "M") 
         FileAppend "𝔐", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "N") 
         FileAppend "𝔑", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "O") 
         FileAppend "𝔒", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "P") 
         FileAppend "𝔓", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "Q") 
         FileAppend "𝔔", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "R") 
         FileAppend "ℜ", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "S") 
         FileAppend "𝔖", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "T") 
         FileAppend "𝔗", "Text.txt", "UTF-8"
    
    	Else If (A_LoopField  == "U") 
         FileAppend "𝔘", "Text.txt", "UTF-8"
    
        Else If (A_LoopField  == "𝔙") 
         FileAppend "𝔙", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "W")
         FileAppend "𝔚", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "X") 
         FileAppend "𝔛", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "Y") 
         FileAppend "𝔜", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "Z") 
         FileAppend "ℨ", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "a") 
         FileAppend "𝔞", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "b")
         FileAppend "𝔟", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "c") 
         FileAppend "𝔠", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "d") 
         FileAppend "𝔡", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "e") 
         FileAppend "𝔢", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "f") 
         FileAppend "𝔣", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "g") 
         FileAppend "𝔤", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "h") 
         FileAppend "𝔥", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "i") 
         FileAppend "𝔦", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "j") 
         FileAppend "𝔧", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "k") 
         FileAppend "𝔨", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "l") 
         FileAppend "𝔩", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "m") 
         FileAppend "𝔪", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "n") 
         FileAppend "𝔫", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "o") 
         FileAppend "𝔬", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "p") 
         FileAppend "𝔭", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "q") 
         FileAppend "𝔮", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "r") 
         FileAppend "𝔯", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "s") 
         FileAppend "𝔰", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "t") 
         FileAppend "𝔱", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "u") 
         FileAppend "𝔲", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "v") 
         FileAppend "𝔳", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "w") 
         FileAppend "𝔴", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "x") 
         FileAppend "𝔵", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "y") 
         FileAppend "𝔶", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "z") 
         FileAppend "𝔷", "Text.txt", "UTF-8"
    
        Else If (A_LoopField  == "1") 
         FileAppend "𝟭", "Text.txt", "UTF-8"
    
     Else If (A_LoopField  == "2") 
         FileAppend "𝟮", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "3") 
         FileAppend "𝟯", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "4") 
         FileAppend "𝟰", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "5") 
         FileAppend "𝟱", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "6") 
         FileAppend "𝟲", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "7") 
         FileAppend "𝟳", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "8") 
         FileAppend "𝟴", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "9") 
         FileAppend "𝟵", "Text.txt", "UTF-8"
    
    Else If (A_LoopField  == "0") 
         FileAppend "𝟬", "Text.txt", "UTF-8"
    
	    Else If (A_LoopField  == "!")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "@")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "#")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "$")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
         Else If (A_LoopField  == "%")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "^")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "&")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "*")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
     Else If (A_LoopField  == "(")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == ")")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "-")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "_")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
         Else If (A_LoopField  == "+")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "=")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == ",")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == ".")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
        Else If (A_LoopField  == ";")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == ":")
        FileAppend A_LoopField , "Text.txt", "UTF-8"
         
     Else If (A_LoopField  == "'")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
         Else If (A_LoopField  == "?")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "/")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "[")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
      Else If (A_LoopField  == "")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
    
     Else If (A_LoopField  == "")
         FileAppend A_LoopField , "Text.txt", "UTF-8"
  
  Else If (A_LoopField  == "]")
         FileAppend A_LoopField , "Text.txt", "UTF-8"

   Else If (A_LoopField  == "|")
    FileAppend A_LoopField , "Text.txt", "UTF-8"
 
Else If (A_LoopField  == "<")
   FileAppend A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == ">")
FileAppend  A_LoopField , "Text.txt", "UTF-8"

Else If (A_LoopField  == "\")
 FileAppend A_LoopField , "Text.txt", "UTF-8"

  Else If (A_LoopField  == " ")
 FileAppend  A_LoopField , "Text.txt", "UTF-8"
}
}
Signature:
 FileAppend  " `n`n [size=80[color=#FF0000]𓃠 [/color][/size][size=60][color=#C53A00]ꑄ[/color][color=#8B7400]ꇘ[/color][color=#51AE00]ꏳ[/color][color=#00FF00]ꋪ[/color][color=#00C53A]ꋬ[/color][color=#008B74]꓄[/color][color=#0051AE]ꏳ[/color][color=#0000FF]ꃬ[/color][color=#3A00C5]꒐[/color][color=#74008B]ꏂ[/size][/color][size=80][color=#AE0051] 𓃠[/color][/size]", "Text.txt", "UTF-8"	
	

MsgBox "Done"






	

	








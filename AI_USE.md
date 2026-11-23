# AI Use Log

Tool: Claude

## What AI helped with

- Dataset documentation (R/data.R): Claude drafted the roxygen text. I
  wrote all 26 clues myself and checked the answers.
- check_answer: Claude helped with the cleaning steps: gsub(“\[^a-z0-9
  \]”, ““, x) to drop punctuation such as the apostrophe in”Wernicke’s
  area”, and sub(“s\$”, ““, x) to ignore a final”s”. I tested them with
  my own examples.
- new_game: Claude gave the constructor that makes the S3 class
  “alphabet_game”. I wrote the documentation wording.
- print.alphabet_game: Claude helped give me the format for the print
  method so the answers stay hidden.
- play_game: Claude helped give vague codes when I did not know how to
  loop with the Sys.time() timer and readline().
- devtools::check(): Claude explained the two notes. I added AI_USE.md
  to .Rbuildignore and used MCATAlphagame::mcat_clues.

## What I did myself

- The game idea and the 26 MCAT clues.
- Testing every function in the Console.
- Documentation wording and my own edits.

## Other

I also used AI to put me in the right direction when I did not know how
to get an output I wanted or how to word the code.

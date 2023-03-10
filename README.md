# iOS Clone: Wordle
## Guess the word.!


The game is a word game in which you have six tries to guess a five letters word. After each try the letters will change colors, so in gray you will see letters that are **not** part of the word, in yellow those that are on the word but are misplaced and in green the ones that exist and are correctly placed.



## Features 📋

- Generate a random word
- Check user guess with random word and give color feedback
- Check user guess is an existing word 
- Make it as close as possible to the original

## Built with 🔨

- XCode
- SwiftUI


### 📱 **Game view** 📱

This is the main one and the most complex of all the screens as is the one where the user plays the game. This view has a toolbar with the game name and a couple of buttons, then we have the rows to write down the words and play and the keyboard. 

#### ❓ **Guess grid** 
As the name states is the area where the user can write down a guess word. The first thing that happens when the user writes down a word is that we check that this word exist in the english dictionary. If the word does **not** exist the row will shake and a toast message will be displayed 

![Wordle Gifs](https://user-images.githubusercontent.com/81619759/158995059-250dfaf1-018a-4dfd-995b-915334fd7469.gif)

After so we have to check the user guess with the right word. So here comes the trick:
  - If the word is right, 🎉wohooo🎉 the game is over, the cards flip to green color, a celebratory toast message is displayed and the statitics view is displayed.
 
![Wordle Gifs (3)](https://user-images.githubusercontent.com/81619759/158995310-e09c7ffa-bdbe-4a64-91e6-1859f82db114.gif)

  - If the word is wrong, 😥bohooo😥 you can try again. Now we have to check letter by letter so when the card flip it changes it color: gray for wrong letter, yellow for misplaced letter and green for right. After this attempt the user will be able to try again in the next row until it completes six tries
  
![Wordle Gifs (1)](https://user-images.githubusercontent.com/81619759/158995220-0f43670c-072a-401f-b6ff-7401b0c8ba24.gif)

#### ⌨️ **Keyboard** 
The second part of the game view is the keyboard. We have created our own keyboard with some rules into it. For doing so we created a LetterButtonView (for each key) that get's a letter as parameter and then we made a KeyboardView with ForEach loops to render the keyboard rows. All the logic is again managed in the data model that is being use as an EnvironmentObject. The keyboard rules are:

  - User cannot send any word with less than 5 letters.
  - Letters background color will change just as the cards. So if the user uses a letter that does not exist the background will change to gray, misplaced will be yellow and right will be green.
  
![Wordle Gifs (2)](https://user-images.githubusercontent.com/81619759/158995085-c7e545ee-a063-46d9-9afa-01d6c4c7b724.gif)



![Screenshot 2022-03-18 at 12 19 42](https://user-images.githubusercontent.com/81619759/158994090-856cf33b-b85b-4d99-9d32-224216fabd8f.png)





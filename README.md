# tapGame
In order to use what I learned some swift functions, I have created a project. This is a simple game which is created by using swift. Game can be played with 2 players. 

## Functions
1- Gesture
2- Timer
3- Segue
4- Alert

## Game Rules
-There are 2 player to play game. The purpose of the game is to tap more. There is a counter which decreases by timer function. When the time reaches zero, the app shows that who is winner by using alert function.

## Desing and Functions

First of all, I have composed UI by usind StoryBoard.

<img width="544" alt="storyboard" src="https://user-images.githubusercontent.com/49618009/119228996-6bfba900-bb1e-11eb-914e-6f5f84652e34.png">

There are two screens. The first one is welcome screen and the second one is game screen. In order to link them, I have used navigation controller.


In the first screen, there is a play button to direct user to game screen. The play button uses segue function.

In the second screen there are 2 fields for player1 and player2. These fields include imageView and the imageView is toucable by using gestureRecognizer function. When user tap the area the count value is increased. Also there is a timer to stop the game. At the end of the game, a notification is enabled. The notification indicates the winner.

You can see the video about game below.

![ezgif com-gif-maker](https://user-images.githubusercontent.com/49618009/119234475-be48c400-bb36-11eb-9910-c13f7345c604.gif)



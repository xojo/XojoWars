# Xojo Wars: XDC 2015 Game Contest #

Xojo Wars is a space battle between 4 ships flying and firing at each other. You implement an algorithm to control your own ship as it plays through a series of battles with other players. Your score is the number of ships you hit minus the number of times you get hit. After all the battles are completed, the ships with the top 4 scores play a championship round to determine the winner.

### To Play ###
1. Use Xojo 2015 Release 2!
1. Implement ShipInterface
1. Add an instance to MainWindow.CreatePlayers

Create a class that implements ShipInterface. Right-click on ShipInterface
in the Navigator and select "New Implementor". This class must be completely
self-contained with no dependency on anything outside of what is described
below.

Add an instance of your class to MainWindow.CreatePlayers. For example:

    AddPlayer(New Follower)
    
Project should be emailed to paul@xojo.com by 8am ET on July 7, 2015. Use the subject line "XDC 2015 Community Contest". The contest will be held on July 14, 2015 at 1pm ET as a live webinar. Register here: https://www.zoom.us/webinar/register/69a0c9d083a447b3d746f627e8486654


### Game Notes ###
Your ship always moves forward and you control it by changing its direction and firing.

If you fly into a wormhole, your ship is teleported to random position. You also get two teleports per game.

Everyone will play about 4 to 6 battles (depending on number of participants) with 4 players per battle. Each battle will be around 60 seconds. Your opponents are random.

The number of opponents you hit and the number of times you get hit are counted. Your score is #ShipsYouHit - #TimesYouGetHit.

The top 4 scores after all the battles are finished play in a championship battle. If there is a tie for 4th place then all the 4th place ties are also included in the battle. This could mean that the championship battle has more than four players.

If there is a tie at the end of the championship round, 10 seconds are added to the clock and the battle continues in tie-breaker mode until there is a winner.

### Rules ###
* No cheating/hacking using things such as introspection, tweaking thread priorities or anything else that is obviously outside the intent of the game.
* Do not attempt to access information outside of what you are provided below.
* Have Fun!

# Coding Information #

## Fire As Boolean ##
Return True to fire a missile. This is only called if there is not already
a missile that has been fired. Missiles disappear when:
* They reach edge of screen
* Reach a wormhole
* Hit an enemy
* After moving 250 positions

## GetName As String ##
Return a String containing your Full Name. You must use your full name
in order to claim victory!

## NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo) ##
This is called when a new game/battle starts. You can do initial setup here.

* w          : Width of battle canvas
* h          : Height of battle canvas
* wormholes(): Positions and sizes of wormholes

## Rotate(shipX As Integer, shipY As Integer, Direction As Directions, activeShot As Boolean, enemies() As EnemyInfo) As RotationTypes ##

* shipX      : the ship's X coordinate.
* shipY      : the ship's Y coordinate.
* Direction  : the direction the ship is pointing. The Directions enum contains N, NE, E, SE, S
             SW, W, NW.
* activeShot : True when you have an active missile
* enemies    : an array of EnemyInfo containing the position of enemies, their 
             direction and missile information. FYI: Missiles move faster than ships.

Return one of the RotationTypes (Left, Right, None) to rotate the ship.

## Teleport As Boolean ##
Return True to teleport your ship. You can use two Teleports per game.

### Other userful methods/properties ###

## Rand ##
A global instance of Random that you can use to generate random values. Or you can use Xojo.Math.RandomInt (if using Xojo 2015 Release 2).

## Microseconds ##
A global instance of Microseconds (based off of Milliseconds) that you can use for timing.

## Globals ##
Change kGameSeconds, kGamesToPlay for testing purposes.

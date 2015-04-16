# XojoWars: XDC 2015 Game Contest #

XojoWars is a space battle between 4 or more ships that you program. Your ship fights against other ships in a series of battles. You score is the number of ships you hit minus the number of times you get hit. The ships with the top 4 scores play a championship round after all the battles are completed.

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


### Game Notes ###
Your ship always moves forward and you control it by changing its direction and firing.

If you fly into a wormhole, your ship is teleported to random position. You also get two teleports per game.

Everyone will play about 4 to 6 battles (depending on number of participants) with 4 players per battle. Each battle will be around 60 seconds. Your opponents are random.

The number of opponents you hit and the number of times you get hit are counted. Your score is #ShipsYouHit - #TimesYouGetHit.

The top 4 scores after all the battles are finished play in a championship battle. If there is a tie for 4th place then all the 4th place ties are also included in the battle. This could mean that the championship battle has more than four players.

If there is a tie at the end of the championship round, 10 seconds are added to the clock and the battle continues in tie-breaker mode until there is a winner.

### Rules ###
* No Introspection usage!
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


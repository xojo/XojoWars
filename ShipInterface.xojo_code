#tag Interface
Protected Interface ShipInterface
	#tag Method, Flags = &h0
		Function Fire() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetName() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GotHit()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate(shipX As Integer, shipY As Integer, Direction As Directions, activeShot As Boolean, enemies() As EnemyInfo) As RotationTypes
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Teleport() As Boolean
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Instructions
		Create a class that implements ShipInterface. Right-click on ShipInterface
		in the Navigator and select "New Implementor". This class must be completely
		self-contained with no dependency on anything outside of what is described
		below.
		
		Your ship always moves forward and you control it by changing its direction.
		
		If you fly into a wormhole, your ship is teleported to random position.
		
		=====
		
		Fire As Boolean
		Return True to fire a missile. This is only called if there is not already
		a missile that has been fired. Missiles disappear when:
		* They reach edge of screen
		* Reach a wormhole
		* Hit an enemy
		* After moving 250 positions
		
		=====
		
		GetName As String
		Return a String containing your Full Name. You must use your full name
		in order to claim victory!
		
		=====
		
		NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo)
		This is called when a new game/battle starts. You can do initial setup here.
		
		w          : Width of battle canvas
		h          : Height of battle canvas
		wormholes(): Positions and sizes of wormholes
		
		=====
		Rotate(shipX As Integer, shipY As Integer, Direction As Directions, 
		       activeShot As Boolean, enemies() As EnemyInfo)
		       As RotationTypes
		
		
		shipX      : the ship's X coordinate.
		shipY      : the ship's Y coordinate.
		Direction  : the direction the ship is pointing. The Direction enum contains N, NE, E, SE, S
		             SW, W, NW.
		activeShot : True when you have an active missile
		enemies    : an array of EnemyInfo containing the position of enemies, their 
		             direction and missile information. FYI: Missiles move faster than ships.
		
		Return one of the RotationTypes (Left, Right, None) to rotate the ship.
		
		=====
		
		Teleport
		Return True to teleport your ship. You can use two Teleports per game.
		
		=====
		
		Other userful methods/properties:
		
		=====
		
		Rand
		A global instance of Random that you can use to generate random values.
		
		=====
		
		Microseconds
		A global instance of Microseconds (based off of Milliseconds).
		
		
	#tag EndNote


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Interface
#tag EndInterface

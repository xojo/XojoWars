#tag Class
Protected Class Follower
Implements ShipInterface
	#tag Method, Flags = &h0
		Sub Constructor(name As String)
		  Self.Name = name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Fire() As Boolean
		  Return Shoot
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetEnemyPosition(shipX As Integer, shipY As Integer, enemies() As EnemyInfo) As Point
		  Var minDistance As Double = 99999
		  Var closest As Point
		  Var myPos As New Point(shipX, shipY)
		  
		  For Each e As EnemyInfo In enemies
		    Var p As New Point(e.X, e.Y)
		    
		    If myPos.DistanceTo(p) < minDistance Then
		      minDistance = myPos.DistanceTo(p)
		      closest = p
		    End If
		  Next
		  
		  Return closest
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetName() As String
		  If name = "" Then
		    name = "Follower" + Format(Rnd * 1000, "0")
		  End If
		  
		  Return name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GotHit()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_E(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX > enemyLocation.X Then
		    Return RotationTypes.Right
		  ElseIf shipY < enemyLocation.Y Then
		    Return RotationTypes.Right
		  ElseIf shipY > enemyLocation.Y Then
		    Return RotationTypes.Left
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_N(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX < enemyLocation.X Then
		    Return RotationTypes.Right
		  ElseIf shipX > enemyLocation.X Then
		    Return RotationTypes.Left
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_NE(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX < enemyLocation.X And shipY < enemyLocation.Y Then
		    Return RotationTypes.Right
		  ElseIf shipX > enemyLocation.X Then
		    Return RotationTypes.Left
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_NW(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX > enemyLocation.X And shipY < enemyLocation.Y Then
		    Return RotationTypes.Left
		  ElseIf shipX < enemyLocation.X Then
		    Return RotationTypes.Right
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_S(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX < enemyLocation.X Then
		    Return RotationTypes.Left
		  ElseIf shipX > enemyLocation.X Then
		    Return RotationTypes.Right
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_SE(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX > enemyLocation.X Then
		    Return RotationTypes.Right
		  ElseIf shipY >= enemyLocation.Y And shipX <= enemyLocation.X Then
		    Return RotationTypes.Left
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_SW(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX < enemyLocation.X Then
		    Return RotationTypes.Left
		  ElseIf shipX > enemyLocation.X And shipY >= enemyLocation.Y Then
		    Return RotationTypes.Right
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Moving_W(enemyLocation As Point, shipX As Integer, shipY As Integer) As RotationTypes
		  If shipX < enemyLocation.X Then
		    Return RotationTypes.Right
		  ElseIf shipY > enemyLocation.Y Then
		    Return RotationTypes.Right
		  ElseIf shipY < enemyLocation.Y Then
		    Return RotationTypes.Left
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate(shipX As Integer, shipY As Integer, Direction As Directions, activeShot As Boolean, enemies() As EnemyInfo) As RotationTypes
		  Var enemyLocation As Point = GetEnemyPosition(shipX, shipY, enemies)
		  If enemyLocation = Nil Then Return RotationTypes.None
		  
		  shoot = WithinRange(enemyLocation, shipX, shipY)
		  
		  // Rotate towards enemy
		  Select Case Direction
		  Case Directions.N
		    Return Moving_N(enemyLocation, shipX, shipY)
		    
		  Case Directions.NE
		    Return Moving_NE(enemyLocation, shipX, shipY)
		    
		  Case Directions.E
		    Return Moving_E(enemyLocation, shipX, shipY)
		    
		  Case Directions.SE
		    Return Moving_SE(enemyLocation, shipX, shipY)
		    
		  Case Directions.S
		    Return Moving_S(enemyLocation, shipX, shipY)
		    
		  Case Directions.SW
		    Return Moving_SW(enemyLocation, shipX, shipY)
		    
		  Case Directions.W
		    Return Moving_W(enemyLocation, shipX, shipY)
		    
		  Case Directions.NW
		    Return Moving_NW(enemyLocation, shipX, shipY)
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Teleport() As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function WithinRange(enemy As Point, shipX As Integer, shipY As Integer) As Boolean
		  Var myShip As New Point(shipX, shipY)
		  
		  If myShip.DistanceTo(enemy) < 200 Then
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Name As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shoot As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

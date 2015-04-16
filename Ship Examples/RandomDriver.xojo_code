#tag Class
Protected Class RandomDriver
Implements ShipInterface
	#tag Method, Flags = &h0
		Sub Constructor(name As String)
		  Self.Name = name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Fire() As Boolean
		  If (Milliseconds - mShootTimeout) > Rand.InRange(1000, 4000) Then
		    mShootTimeout = Milliseconds
		    Return True
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetName() As String
		  If name = "" Then
		    name = "Random" + Format(Rnd * 1000, "0")
		  End If
		  
		  Return name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GotHit()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo)
		  mTimeOut = Milliseconds
		  mShootTimeout = Milliseconds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate(shipX As Integer, shipY As Integer, Direction As Directions, activeShot As Boolean, enemies() As EnemyInfo) As RotationTypes
		  If (Milliseconds - mTimeOut) > 2000 Then
		    // Possibly turn every 2 seconds
		    mTimeOut = Milliseconds
		    
		    Select Case Rand.InRange(1, 10)
		    Case 1 To 3
		      Return RotationTypes.Left
		    Case 4 To 6
		      Return RotationTypes.Right
		    Case Else
		      Return RotationTypes.None
		    End Select
		  Else
		    Return RotationTypes.None
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Teleport() As Boolean
		  If Rand.InRange(1, 10) = 7 Then
		    Return True
		  End If
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		mShootTimeout As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mTimeOut As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Name As String
	#tag EndProperty


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
			Name="mShootTimeout"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mTimeOut"
			Group="Behavior"
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
End Class
#tag EndClass

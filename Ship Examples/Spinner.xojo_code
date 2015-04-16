#tag Class
Protected Class Spinner
Implements ShipInterface
	#tag Method, Flags = &h0
		Sub Constructor(name As String)
		  Self.Name = name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Fire() As Boolean
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetName() As String
		  If name = "" Then
		    name = "Spinner" + Format(Rnd * 1000, "0")
		  End If
		  
		  Return name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GotHit()
		  If SpinDirection = RotationTypes.Right Then
		    SpinDirection = RotationTypes.Left
		  Else
		    SpinDirection = RotationTypes.Right
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo)
		  SpinDirection = RotationTypes.Right
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate(shipX As Integer, shipY As Integer, Direction As Directions, activeShot As Boolean, enemies() As EnemyInfo) As RotationTypes
		  If Rand.InRange(1, 10) > 3 Then
		    Return SpinDirection
		  Else
		    Return RotationTypes.None
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Teleport() As Boolean
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Name As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SpinDirection As RotationTypes
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

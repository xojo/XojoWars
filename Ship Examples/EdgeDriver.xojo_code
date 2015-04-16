#tag Class
Protected Class EdgeDriver
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
		    name = "Edger" + Format(Rnd * 1000, "0")
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
		  Task = "GotoTop"
		  
		  CanvasRight = w - kShipSize
		  CanvasBottom = h - kShipSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate(shipX As Integer, shipY As Integer, Direction As Directions, activeShot As Boolean, enemies() As EnemyInfo) As RotationTypes
		  Select Case Task
		  Case "GotoTop"
		    If direction <> Directions.N Then
		      Return RotationTypes.Right
		    End If
		    
		    If shipY <= kShipSize \ 2 Then
		      Task = "RightEdge"
		    End If
		    
		  Case "RightEdge"
		    If direction <> Directions.E Then
		      Return RotationTypes.Right
		    End If
		    
		    If shipX >= CanvasRight - kShipSize \ 2 Then
		      Task = "BottomEdge"
		    End If
		    
		  Case "BottomEdge"
		    If direction <> Directions.S Then
		      Return RotationTypes.Right
		    End If
		    
		    If shipY >= CanvasBottom - kShipSize \ 2 Then
		      Task = "LeftEdge"
		    End If
		    
		  Case "LeftEdge"
		    If direction <> Directions.W Then
		      Return RotationTypes.Right
		    End If
		    
		    If shipX <= kShipSize \ 2 And direction = Directions.W Then
		      Task = "GotoTop"
		    End If
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Teleport() As Boolean
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CanvasBottom As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CanvasRight As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Name As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Task As String
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

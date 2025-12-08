#tag Class
Protected Class Missile
	#tag Method, Flags = &h0
		Sub Constructor(startX As Integer, startY As Integer, rotation As Integer)
		  // Create a missile at the starting position and heading in
		  // in the direction the ship is pointing.
		  
		  Var offset As Integer = 20
		  
		  X = startX + offset
		  Y = startY + offset
		  
		  Self.Rotation = rotation
		  
		  StartPosition = New Point(X, Y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  // Draw the missile
		  
		  Var missilePic As New Picture(kWidth, kHeight)
		  
		  missilePic.Graphics.DrawingColor = &cffffff
		  missilePic.Graphics.FillRectangle(0, 0, _
		  missilePic.Graphics.Width, missilePic.Graphics.Height)
		  
		  // Create it as a vector so that it can be rotated in the direction
		  // the ship is facing.
		  Var s As New PixmapShape(missilePic)
		  s.Rotation = Rotation * 0.01745329251
		  
		  #If TargetLinux Then
		    g.DrawPicture(missilePic, X, Y)
		  #Else
		    g.DrawObject(s, X, Y)
		  #Endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Move() As Boolean
		  // Move the missile
		  
		  Const kSpeed = 5 // pixels to move
		  
		  Select Case Rotation
		  Case 0, 360
		    X = X + kSpeed
		  Case 45
		    X = X + kSpeed
		    Y = Y + kSpeed
		  Case 90
		    Y = Y + kSpeed
		  Case 135
		    X = X - kSpeed
		    Y = Y + kSpeed
		  Case 180
		    X = X - kSpeed
		  Case 225
		    X = X - kSpeed
		    Y = Y - kSpeed
		  Case 270
		    Y = Y - kSpeed
		  Case 315
		    X = X + kSpeed
		    Y = Y - kSpeed
		  End Select
		  
		  Var currentPosition As New Point(X, Y)
		  
		  // Missile fades away after a while
		  If StartPosition.DistanceTo(currentPosition) > 250 Then
		    Return False
		  Else
		    Return True
		  End If
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Select Case Rotation
			  Case 0, 360
			    Return Directions.E
			  Case 45
			    Return Directions.SE
			  Case 90
			    Return Directions.S
			  Case 135
			    Return Directions.SW
			  Case 180
			    Return Directions.W
			  Case 225
			    Return Directions.NW
			  Case 270
			    Return Directions.N
			  Case 315
			    Return Directions.NE
			  End Select
			End Get
		#tag EndGetter
		Direction As Directions
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return New Rect(X, Y, kWidth, kHeight)
			  
			End Get
		#tag EndGetter
		Rect As Rect
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Rotation As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartPosition As Point
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Integer
	#tag EndProperty


	#tag Constant, Name = kHeight, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kWidth, Type = Double, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Direction"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Directions"
			EditorType="Enum"
			#tag EnumValues
				"0 - N"
				"1 - S"
				"2 - E"
				"3 - W"
				"4 - NE"
				"5 - SE"
				"6 - SW"
				"7 - NW"
			#tag EndEnumValues
		#tag EndViewProperty
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
			Name="Rotation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
		#tag ViewProperty
			Name="X"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

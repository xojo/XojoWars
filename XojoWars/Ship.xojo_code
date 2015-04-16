#tag Class
Protected Class Ship
	#tag Method, Flags = &h0
		Sub Constructor(w As Integer, h As Integer, c As Color = &cffffff)
		  RightMargin = w
		  BottomMargin = h
		  
		  BlastSound = blast.Clone
		  BlastSound.Volume = 20
		  
		  ShootSound = shoot.Clone
		  
		  #If TargetWin32 Then
		    TeleportSound = shoot.Clone
		  #Else
		    TeleportSound = Swooshing.Clone
		  #Endif
		  
		  SetRandomPosition
		  
		  ShipColor = c
		  
		  Dim rotations As Integer = App.Randomizer.InRange(1, 8)
		  For r As Integer = 1 To rotations
		    RotateRight
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  // Create a Vector shape for the bitmap so
		  // that it can be rotated later.
		  If Image Is Nil Then
		    DrawShip
		  End If
		  
		  Dim ship As New Group2D
		  
		  Dim s As New PixmapShape(Image)
		  ship.Append(s)
		  
		  // // Put the ship number in the center
		  // Dim num As New StringShape
		  // num.Text = Str(Number)
		  // num.X = -2
		  // num.Y = 1
		  // num.Bold = True
		  // If Number < 10 Then
		  // num.TextSize = 14
		  // Else
		  // num.TextSize = 10
		  // End If
		  //
		  // num.FillColor = &c000000
		  // num.Rotation = 90 * 0.01745329251
		  // ship.Append(num)
		  
		  // Set the center of the ship for rotation
		  ship.X = kSize \ 2
		  ship.Y = kSize \ 2
		  
		  // Rotation is always specified in degrees, but vector
		  // graphics need it converted to radians.
		  // pi/180 = 0.01745329251
		  ship.Rotation = mRotation * 0.01745329251
		  
		  #If TargetLinux Then
		    g.DrawPicture(Image, X, Y) // Rotation not working on Linux
		  #Else
		    g.DrawObject(ship, X, Y)
		  #Endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawShip()
		  Dim shipPic As New Picture(kSize, kSize)
		  
		  Dim g As Graphics = shipPic.Graphics
		  g.ForeColor = ShipColor
		  
		  // Main body
		  g.FillRect(6, 15, 24, 12)
		  
		  // Cockpit
		  Dim cp(8) As Integer
		  cp(1) = 30
		  cp(2) = 15
		  cp(3) = 40
		  cp(4) = 18
		  cp(5) = 40
		  cp(6) = 24
		  cp(7) = 30
		  cp(8) = 27
		  g.FillPolygon(cp)
		  
		  // Left wing bottom
		  g.FillRect(4, 3, 10, 12)
		  
		  // Right wing bottom
		  g.FillRect(4, 27, 10, 12)
		  
		  // Left wing
		  Dim wing(6) As Integer
		  wing(1) = 14
		  wing(2) = 3
		  wing(3) = 30
		  wing(4) = 12
		  wing(5) = 14
		  wing(6) = 12
		  g.FillPolygon(wing)
		  
		  // Right wing
		  wing(1) = 14
		  wing(2) = 30
		  wing(3) = 30
		  wing(4) = 30
		  wing(5) = 14
		  wing(6) = 38
		  g.FillPolygon(wing)
		  
		  g.ForeColor = &c000000
		  g.Bold = True
		  g.DrawString(Str(Number), 14, 25)
		  
		  Image = shipPic
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Fire()
		  // Create a missile in the center of the ship
		  
		  If Missile Is Nil Then
		    Missile = New Missile(Self.X, Self.Y, mRotation)
		    
		    ShootSound.Play
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Forward(speed As Integer = 5)
		  // Move forward
		  
		  Select Case mRotation
		  Case 0, 360
		    X = X + speed
		  Case 45
		    X = X + speed
		    Y = Y + speed
		  Case 90
		    Y = Y + speed
		  Case 135
		    X = X - speed
		    Y = Y + speed
		  Case 180
		    X = X - speed
		  Case 225
		    X = X - speed
		    Y = Y - speed
		  Case 270
		    Y = Y - speed
		  Case 315
		    X = X + speed
		    Y = Y - speed
		  End Select
		  
		  // Wrap ship around edges
		  If X > RightMargin - kShipSize Then X = RightMargin - kShipSize
		  If Y > BottomMargin - kShipSize Then Y = BottomMargin - kShipSize
		  If Y < 0 Then Y = 0
		  If X < 0 Then X = 0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsHitBy(m As Missile) As Boolean
		  // If missile hits the ship, then move it to another location
		  
		  Dim shipRect As New Xojo.Core.Rect(X, Y, kSize, kSize)
		  Dim missileRect As New Xojo.Core.Rect(m.X, m.Y, m.kHeight, m.kWidth)
		  
		  If shipRect.Intersection(missileRect) <> Nil Then
		    BlastSound.Play
		    Explosion = New AnimatedEffect(explosionFrames, X, Y, 1.0)
		    
		    SetRandomPosition
		    
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsObstacle(o As Obstacle) As Boolean
		  Dim shipRect As New Xojo.Core.Rect(X - 5, Y - 5, kSize - 10, kSize - 10)
		  Dim oRect As New Xojo.Core.Rect(o.X, o.Y, o.kHeight, o.kWidth)
		  
		  If shipRect.Intersection(oRect) <> Nil Then
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateLeft()
		  // Rotate left by 45 degrees
		  
		  If mRotation < 45 Then mRotation = 360
		  
		  mRotation = mRotation - 45
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotateRight()
		  // Rotate right by 45 degrees
		  
		  If mRotation > 315 Then mRotation = 0
		  
		  mRotation = mRotation + 45
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRandomPosition(playSound As Boolean = False)
		  Dim xPos As Integer = App.Randomizer.InRange(kShipSize, RightMargin - kShipSize)
		  xPos = (xPos \ kShipSize) * kShipSize
		  
		  Dim yPos As Integer = App.Randomizer.InRange(kShipSize, BottomMargin - kShipSize)
		  yPos = (yPos \ kShipSize) * kShipSize
		  
		  Self.X = xPos
		  Self.Y = yPos
		  
		  If playSound Then TeleportSound.Play
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private BlastSound As Sound
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BottomMargin As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Explosion As AnimatedEffect
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mHitCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mHitCount = value
			End Set
		#tag EndSetter
		HitCount As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Image As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHitCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Missile As Missile
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRotation As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShipColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Number As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RightMargin As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mRotation
			End Get
		#tag EndGetter
		Rotation As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mShipColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mShipColor = value
			  Image = Nil
			End Set
		#tag EndSetter
		ShipColor As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ShootSound As Sound
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TeleportSound As Sound
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalScore As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WasHitCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Integer
	#tag EndProperty


	#tag Constant, Name = kSize, Type = Double, Dynamic = False, Default = \"40", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="HitCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Image"
			Group="Behavior"
			Type="Picture"
		#tag EndViewProperty
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
			Name="Number"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rotation"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShipColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
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
		#tag ViewProperty
			Name="TotalScore"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WasHitCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

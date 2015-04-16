#tag Class
Protected Class ShipController
	#tag Method, Flags = &h0
		Sub CheckifHitBy(enemy As ShipController)
		  // Did the enemy hit me?
		  If enemy.DidHit(mShip) Then
		    // Tell driver was hit
		    Driver.GotHit
		  Else
		    Return
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(shipNum As Integer, w As Integer, h As Integer, shipDriver As ShipInterface)
		  mShip = New Ship(w, h)
		  
		  Self.ShipNum = shipNum
		  
		  RightMargin = w
		  BottomMargin = h
		  
		  Driver = shipDriver
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DidHit(t As Ship) As Boolean
		  If mShip.Missile Is Nil Then Return False
		  
		  If t.IsHitBy(mShip.Missile) Then
		    // t as hit
		    t.WasHitCount = t.WasHitCount + 1
		    t.Missile = Nil
		    
		    // Self scores a hit
		    mShip.HitCount = mShip.HitCount + 1
		    mShip.Missile = Nil
		    
		    Return True
		  Else
		    Return False
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawMissile(g As Graphics)
		  If mShip.Missile <> Nil Then
		    mShip.Missile.Draw(g)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawShip(g As Graphics)
		  mShip.Draw(g)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EndGame()
		  If ShipThread <> Nil Then
		    ShipThread.GameActive = False
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveMissile()
		  If mShip.Missile <> Nil Then
		    If mShip.Missile.Move Then
		      If mShip.Missile.X > RightMargin + kShipSize Or _
		        mShip.Missile.X < 0 Or _
		        mShip.Missile.Y < 0 Or _
		        mShip.Missile.Y > BottomMargin + kShipSize Then
		        mShip.Missile = Nil
		        Return
		      End If
		      
		      // If missile hits obstacle then it goes away
		      For Each o As Obstacle In Obstacles
		        If mShip.Missile <> Nil Then
		          If mShip.Missile.Rect.Intersection(o.Rect) <> Nil Then
		            mShip.Missile = Nil
		          End If
		        End If
		      Next
		    Else
		      mShip.Missile = Nil
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NewGame(w As Integer, h As Integer, wormholes() As WormholeInfo)
		  mShip.HitCount = 0
		  mShip.WasHitCount = 0
		  TeleportsLeft = 2
		  
		  mShip.SetRandomPosition
		  mShip.Missile = Nil
		  
		  Driver.NewGame(w, h, wormholes)
		  
		  ShipThread = New ShipThread
		  ShipThread.Priority = 1
		  ShipThread.Controller = Self
		  ShipThread.Enemies = Enemies
		  ShipThread.GameActive = True
		  #If TargetMacOS Then
		    ShipThread.Run
		  #Endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessPlayer()
		  // If there are teleports left, then check if the user wants to teleport
		  If Driver.Teleport And TeleportsLeft > 0 Then
		    TeleportsLeft = TeleportsLeft - 1
		    mShip.SetRandomPosition(True)
		  End If
		  
		  // If ship enters a wormhole, then teleport it
		  For Each o As Obstacle In Obstacles
		    If mShip.IsObstacle(o) Then
		      mShip.SetRandomPosition(True)
		    End If
		  Next
		  
		  // Move the ship foward
		  'mShip.Forward
		  
		  // Handle the rotation
		  Dim r As RotationTypes = Driver.Rotate(mShip.X, mShip.Y, Direction, MissileInAir, Enemies)
		  Select Case r
		  Case RotationTypes.Left
		    mShip.RotateLeft
		  Case RotationTypes.Right
		    mShip.RotateRight
		  End Select
		  
		  // If a missile is not currently active then check if the user
		  // want to fire again
		  If Not MissileInAir Then
		    If Driver.Fire Then
		      mShip.Fire
		    End If
		  End If
		  
		  Exception e As RunTimeException
		    If e IsA ThreadEndException Or e IsA EndException Then
		      Raise e
		    End If
		    
		    Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShipColor(value As Integer)
		  Dim colors() As Color = Array(&cf20016, _ // red
		  &cf48017, _ // orange
		  &cfbff1d, _ // yellow
		  &c4dff0e, _ // green
		  &c62ffff, _ // teal
		  &c4125ff, _ // blue
		  &cf700ff, _ // pink
		  &c8600ff, _ // purple
		  &cf888888) // gray
		  
		  Dim c As Color
		  If value <= colors.UBound Then
		    c = colors(value)
		  Else
		    #If TargetLinux Then
		      c = colors(Rand.InRange(0, colors.UBound))
		    #Else
		      c = colors(Xojo.Math.RandomInt(0, colors.UBound))
		    #Endif
		  End If
		  
		  mShip.ShipColor = c
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTotalScore()
		  mShip.TotalScore = mShip.TotalScore + mShip.HitCount - mShip.WasHitCount
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BottomMargin As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Select Case mShip.Rotation
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
			  Return  Driver.GetName + " (" + Str(mShip.Number) + ")"
			End Get
		#tag EndGetter
		DisplayName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Driver As ShipInterface
	#tag EndProperty

	#tag Property, Flags = &h0
		Enemies() As EnemyInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		GamesPlayed As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Driver.GetName
			End Get
		#tag EndGetter
		GetName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.HitCount
			End Get
		#tag EndGetter
		Hits As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  If mShip.Missile <> Nil Then
			    Return True
			  Else
			    Return False
			  End If
			End Get
		#tag EndGetter
		Private MissileInAir As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mShip As Ship
	#tag EndProperty

	#tag Property, Flags = &h0
		Obstacles() As Obstacle
	#tag EndProperty

	#tag Property, Flags = &h0
		RightMargin As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip
			  
			End Get
		#tag EndGetter
		Ship As Ship
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.ShipColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			End Set
		#tag EndSetter
		ShipColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.Number
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Dim colors() As Color = Array(&c000000, &cf20016, _ // red
			  // &cf48017, _ // orange
			  // &cfbff1d, _ // yellow
			  // &c4dff0e, _ // green
			  // &c62ffff, _ // teal
			  // &c4125ff, _ // blue
			  // &cf700ff, _ // pink
			  // &c8600ff, _ // purple
			  // &cf888888) // gray
			  //
			  // Dim c As Color
			  // If value <= colors.UBound Then
			  // c = colors(value)
			  // Else
			  // c = colors(Xojo.Math.RandomInt(0, colors.UBound))
			  // End If
			  //
			  // mShip.ShipColor = c
			  mShip.Number = value
			  mShip.DrawShip
			End Set
		#tag EndSetter
		ShipNum As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ShipThread As ShipThread
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TeleportsLeft As Integer = 2
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.TotalScore
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mShip.TotalScore = value
			End Set
		#tag EndSetter
		TotalScore As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.WasHitCount
			End Get
		#tag EndGetter
		WasHit As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.X
			End Get
		#tag EndGetter
		X As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mShip.Y
			End Get
		#tag EndGetter
		Y As Integer
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BottomMargin"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Direction"
			Group="Behavior"
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
			Name="DisplayName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GamesPlayed"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GetName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hits"
			Group="Behavior"
			Type="Integer"
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
			Name="RightMargin"
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
			Name="ShipNum"
			Group="Behavior"
			Type="Integer"
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
			Name="WasHit"
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

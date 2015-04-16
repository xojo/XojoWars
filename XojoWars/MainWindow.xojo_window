#tag Window
Begin Window MainWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   750
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   220908098
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Xojo Wars"
   Visible         =   True
   Width           =   1000
   Begin Canvas BattleCanvas
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      Height          =   472
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   46
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   744
   End
   Begin Timer GameTimer
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   2
      Period          =   5
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Label GameTimerLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   38
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   605
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      Text            =   "0"
      TextAlign       =   1
      TextColor       =   &c0000FF00
      TextFont        =   "System"
      TextSize        =   32.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   105
   End
   Begin PushButton StartButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Start"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   16
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Timer AITimer
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   2
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Listbox ScoreList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   5
      ColumnsResizable=   False
      ColumnWidths    =   "40,*,50,80,60"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   30
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   3
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   212
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   " 	Name	Hits	Was Hit	Score"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   18.0
      TextUnit        =   0
      Top             =   529
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   960
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   745
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      Text            =   "Leaderboard"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   235
   End
   Begin Listbox LeadersList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   4
      ColumnsResizable=   False
      ColumnWidths    =   "20,*,50,30"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   471
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#	Name	Total	GP"
      Italic          =   False
      Left            =   756
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   244
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label BattleLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   38
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   112
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   "Battle"
      TextAlign       =   1
      TextColor       =   &c0000FF00
      TextFont        =   "System"
      TextSize        =   32.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   481
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Setup
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileRestoreLeaderboard() As Boolean Handles FileRestoreLeaderboard.Action
			RestoreLeaderboard
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub AddPlayer(p As ShipInterface)
		  Dim ai As ShipController
		  ai = New ShipController(AllPlayers.UBound + 2, BattleCanvas.Width, BattleCanvas.Height, p)
		  ai.Obstacles = Obstacles
		  AllPlayers.Append(ai)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreatePlayers()
		  AddPlayer(New Follower("Follower1"))
		  AddPlayer(New EdgeDriver("EdgeDriver1"))
		  AddPlayer(New Follower("Follower2"))
		  
		  AddPlayer(New Follower("Follower3"))
		  AddPlayer(New Follower("Follower4"))
		  AddPlayer(New Spinner("Spinner"))
		  AddPlayer(New Follower("Follower5"))
		  AddPlayer(New RandomDriver("Random1"))
		  AddPlayer(New Follower("Follower6"))
		  AddPlayer(New RandomDriver("Random2"))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EndBattle()
		  For Each p As ShipController In Players
		    p.EndGame
		    p.UpdateTotalScore
		  Next
		  
		  AITimer.Enabled = False
		  GameTimer.Enabled = False
		  
		  CurrentBattle = CurrentBattle + 1
		  If Not StopContest Then
		    StartBattle
		  Else
		    ScoreList.Sort
		    
		    Dim winner As ShipController = ShipController(ScoreList.RowTag(0))
		    // If tied, rank by hits
		    BattleLabel.Text = "Winner: " + winner.GetName
		    BattleLabel.HelpTag = BattleLabel.Text
		    
		    For i As Integer = Players.Ubound DownTo 0
		      If Players(i) <> winner Then
		        Players.Remove(i)
		      End If
		    Next
		    
		    GameOver = True
		    
		    GameTimer.Enabled = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GenerateStarfield()
		  For i As Integer = 1 To 50
		    #If TargetLinux Then
		      Dim sx As Integer = Rand.InRange(0, BattleCanvas.Width)
		      Dim sy As Integer = Rand.InRange(0, BattleCanvas.Height)
		    #Else
		      Dim sx As Integer = Xojo.Math.RandomInt(0, BattleCanvas.Width)
		      Dim sy As Integer = Xojo.Math.RandomInt(0, BattleCanvas.Height)
		    #Endif
		    StarField(i) = New Xojo.Core.Point(sx, sy)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitLeaderboard()
		  // Set up initial Leaderboard
		  LeadersList.DeleteAllRows
		  
		  For Each a As ShipController In AllPlayers
		    LeadersList.AddRow("", a.DisplayName, Str(a.TotalScore), Str(a.GamesPlayed))
		    LeadersList.RowTag(LeadersList.LastIndex) = a
		  Next
		  
		  LeadersList.SortedColumn = 2
		  LeadersList.ColumnSortDirection(2) = -1
		  LeadersList.Sort
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RestoreLeaderboard()
		  // Load the leaderboard from saved file and then
		  // match up players to their entries in the leaderboard
		  // and restart contest at the appropriate last game number.
		  Dim lbFile As FolderItem = SpecialFolder.Desktop.Child("Leaderboard.txt")
		  
		  If lbFile <> Nil And lbFile.Exists Then
		    Dim input As TextInputStream
		    input = TextInputStream.Open(lbFile)
		    
		    Dim minGames As Integer = 999
		    While Not input.EOF
		      // Update Player with total score and GP
		      Dim values() As String = input.ReadLine(Encodings.UTF8).Split(&u09)
		      
		      For Each p As ShipController In AllPlayers
		        If p.GetName = values(0) Then
		          p.TotalScore = Val(values(1))
		          p.GamesPlayed = Val(values(2))
		          
		          If p.GamesPlayed < minGames Then minGames = p.GamesPlayed
		        End If
		      Next
		    Wend
		    
		    input.Close
		    
		    InitLeaderboard
		    
		    StartContest(minGames + 1)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectPlayersForBattle()
		  Dim battleName As String = "Battle " + Str(CurrentBattle)
		  
		  // Sort the players by games played, lowest to highest.
		  AllPlayers.Shuffle
		  Dim gp() As Integer
		  For Each p As ShipController In AllPlayers
		    gp.Append(p.GamesPlayed)
		  Next
		  gp.SortWith(AllPlayers)
		  
		  If AllPlayers(0).GamesPlayed < kGamesToPlay Then
		    // Keep playing until all players have played twice
		    For i As Integer = 0 To 3
		      Players.Append(AllPlayers(i))
		    Next
		    
		  Else
		    // Championship battle!
		    battleName = "Championship"
		    
		    // Play the top four scores.
		    For i As Integer = 0 To 3
		      Players.Append(LeadersList.RowTag(i))
		    Next
		    
		    //If 4th place is tied with 5th place (or later), then take remaining players that are
		    // tied with 4th place
		    Dim p As ShipController
		    For i As Integer = 4 To LeadersList.ListCount - 1
		      p = ShipController(LeadersList.RowTag(i))
		      If p.TotalScore = Players(3).TotalScore Then
		        Players.Append(p)
		      End If
		    Next
		    
		    StopContest = True // Contest stops after this battle
		  End If
		  
		  BattleLabel.Text = battleName
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Setup()
		  AITimer.Enabled = False
		  GameTimer.Enabled = False
		  
		  GenerateStarfield
		  
		  CreatePlayers
		  
		  InitLeaderboard
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StartBattle()
		  fanfareshort.Volume = 50
		  fanfareshort.Play
		  
		  ReDim Players(-1)
		  
		  UpdateLeaderboard
		  
		  SelectPlayersForBattle
		  
		  ScoreList.DeleteAllRows
		  
		  // Create Obstacles
		  ReDim Obstacles(-1)
		  Dim wormholes() As WormholeInfo
		  Dim o As Obstacle
		  For i As Integer = 1 To 4
		    #If TargetLinux Then
		      o = New Obstacle(Rand.InRange(0, BattleCanvas.Width - Obstacle.kWidth), _
		      Rand.InRange(0, BattleCanvas.Height - Obstacle.kHeight))
		    #Else
		      o = New Obstacle(Xojo.Math.RandomInt(0, BattleCanvas.Width - Obstacle.kWidth), _
		      Xojo.Math.RandomInt(0, BattleCanvas.Height - Obstacle.kHeight))
		    #Endif
		    Obstacles.Append(o)
		    
		    Dim w As New WormholeInfo
		    w.X = o.X
		    w.Y = o.Y
		    w.Height = o.Height
		    w.Width = o.Width
		    wormholes.Append(w)
		  Next
		  
		  // Initialize the ships and score list
		  Dim shipColor As Integer
		  For Each a As ShipController In Players
		    a.SetShipColor(shipColor)
		    shipColor = shipColor + 1
		    
		    // Copy wormholes for each player so that they can't modify them for anyone else
		    Dim whCopy() As WormholeInfo
		    For Each c As WormholeInfo In wormholes
		      Dim w As New WormholeInfo
		      w.X = c.X
		      w.Y = c.Y
		      w.Height = c.Height
		      w.Width = c.Width
		      whCopy.Append(w)
		    Next
		    
		    a.GamesPlayed = a.GamesPlayed + 1
		    a.NewGame(BattleCanvas.Width, BattleCanvas.Height, whCopy)
		    
		    ScoreList.AddRow("", a.DisplayName, Str(a.Hits), Str(a.WasHit), Str(a.Hits - a.WasHit))
		    ScoreList.RowTag(ScoreList.LastIndex) = a
		    ScoreList.InvalidateCell(ScoreList.LastIndex, 0)
		  Next
		  
		  GenerateStarfield
		  
		  // Start the game
		  StartTime = Microseconds
		  
		  AITimer.Enabled = True
		  GameTimer.Enabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StartContest(battle As Integer = 1)
		  GameTimer.Period = 10
		  BonusTime = 0
		  
		  CurrentBattle = battle
		  StopContest = False
		  GameOver = False
		  
		  // Reset scores
		  For Each p As ShipController In AllPlayers
		    If battle = 1 Then
		      p.GamesPlayed = 0
		      p.TotalScore = 0
		    End If
		    p.EndGame
		  Next
		  
		  BattleCanvas.Invalidate(False)
		  
		  StartBattle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLeaderboard()
		  Dim a As ShipController
		  For i As Integer = 0 To LeadersList.ListCount - 1
		    a = ShipController(LeadersList.RowTag(i))
		    LeadersList.Cell(i, 0) = Str(i + 1)
		    LeadersList.Cell(i, 2) = Str(a.TotalScore)
		    LeadersList.Cell(i, 3) = Str(a.GamesPlayed)
		  Next
		  
		  LeadersList.SortedColumn = 2
		  LeadersList.ColumnSortDirection(2) = -1
		  LeadersList.Sort
		  
		  For i As Integer = 0 To LeadersList.ListCount - 1
		    a = ShipController(LeadersList.RowTag(i))
		    LeadersList.Cell(i, 0) = Str(i + 1)
		  Next
		  
		  // Save leaderboard in case of crash so that it can be restored
		  Dim lbFile As FolderItem = SpecialFolder.Desktop.Child("Leaderboard.txt")
		  Dim output As TextOutputStream
		  output = TextOutputStream.Create(lbFile)
		  
		  Dim p As ShipController
		  For i As Integer = 0 To LeadersList.ListCount - 1
		    p = LeadersList.RowTag(i)
		    output.WriteLine(p.GetName + &u09 + LeadersList.Cell(i, 2) + &u09 + LeadersList.Cell(i, 3))
		  Next
		  
		  output.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AllPlayers() As ShipController
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BonusTime As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CurrentBattle As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private GameOver As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Obstacles() As Obstacle
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Players() As ShipController
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StarField(50) As Xojo.Core.Point
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartTime As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StopContest As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events BattleCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  // Draws everything at the current positions.
		  
		  g.ForeColor = &c000000
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  // Starfield
		  g.ForeColor = &cffffff
		  For i As Integer = 1 To 50
		    g.FillRect(StarField(i).X, StarField(i).Y, 2, 2)
		  Next
		  
		  // Add Obstacles
		  For Each o As Obstacle In Obstacles
		    o.Draw(g)
		  Next
		  
		  // Draw ships, missiles and explosions
		  For Each p As ShipController In Players
		    p.DrawShip(g)
		    p.DrawMissile(g)
		    
		    // Draw explosion
		    If p.Ship.Explosion <> Nil Then
		      p.Ship.Explosion.Draw(g)
		      if p.Ship.Explosion.Done then p.Ship.Explosion = Nil
		    End If
		    
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GameTimer
	#tag Event
		Sub Action()
		  Static shipMovement As Integer = 1
		  shipMovement = shipMovement + 1
		  
		  // Moves missiles and checks if a missile
		  // has hit anything.
		  Players.Shuffle
		  
		  For Each p As ShipController in Players
		    p.MoveMissile
		    
		    If shipMovement Mod 3 = 0 Then
		      p.Ship.Forward
		    End If
		    
		    // Check if any ships were hit by any missiles
		    For Each enemy As ShipController In Players
		      If p <> enemy Then
		        // Did p hit the enemy?
		        enemy.CheckIfHitBy(p)
		      End If
		    Next
		  Next
		  
		  // Tell the Canvas to update
		  BattleCanvas.Invalidate(False)
		  
		  // Update scores
		  If Players.Ubound >= 0 Then
		    Dim a As ShipController
		    For i As Integer = 0 To ScoreList.ListCount - 1
		      a = ShipController(ScoreList.RowTag(i))
		      ScoreList.Cell(i, 2) = Str(a.Hits)
		      ScoreList.Cell(i, 3) = Str(a.WasHit)
		      ScoreList.Cell(i, 4) = Str(a.Hits - a.WasHit)
		      
		      ScoreList.SortedColumn = 4
		      ScoreList.ColumnSortDirection(4) = -1
		    Next
		  End If
		  
		  If Not GameOver Then
		    Dim elapsedSeconds As Double
		    If StartTime > 0 Then
		      elapsedSeconds = (Microseconds - StartTime) \ 1000000
		      GameTimerLabel.Text = Str((kGameSeconds + BonusTime) - elapsedSeconds, "###")
		    Else
		      GameTimerLabel.Text = "Ready"
		    End If
		    
		    If elapsedSeconds > kGameSeconds + BonusTime Then
		      If StopContest Then
		        // Stop contest if there is a winner (no ties).
		        // If there is a tie, then add 10 more seconds and continue
		        ScoreList.Sort
		        If Val(ScoreList.Cell(0, 4)) = Val(ScoreList.Cell(1, 4)) Then
		          BonusTime = 10
		          BattleLabel.Text = BattleLabel.Text + " TieBreaker!"
		        Else
		          EndBattle
		        End If
		      Else
		        EndBattle
		      End If
		    End If
		  Else
		    Me.Period = 100
		    Players(0).Ship.RotateRight
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StartButton
	#tag Event
		Sub Action()
		  StartContest
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AITimer
	#tag Event
		Sub Action()
		  For Each ai As ShipController In Players
		    // Update position of all other enemies
		    
		    Dim allEnemyInfo() As EnemyInfo
		    
		    For Each enemy As ShipController In Players
		      If ai <> enemy Then
		        Dim e As New EnemyInfo
		        e.X = enemy.X
		        e.Y = enemy.Y
		        e.Direction = enemy.Direction
		        e.Number = enemy.ShipNum
		        
		        Dim m As MissileInfo
		        If enemy.Ship.Missile <> Nil Then
		          m = New MissileInfo
		          m.Direction = enemy.Ship.Missile.Direction
		          m.X = enemy.Ship.Missile.X
		          m.Y = enemy.Ship.Missile.Y
		          e.Missile = m
		        End If
		        
		        allEnemyInfo.Append(e)
		        
		      End If
		    Next
		    
		    ai.Enemies = allEnemyInfo
		    
		    #If Not TargetMacOS Then
		      ai.ProcessPlayer
		    #Endif
		  Next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ScoreList
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row > Me.ListCount-1 Then Return False
		  
		  If column = 0 Then
		    Dim p As ShipController = ShipController(Me.RowTag(row))
		    
		    Const kSize As Integer = 30
		    Dim pic As New Picture(kSize, kSize)
		    pic.Graphics.FillRect(0, 0,kSize, kSize)
		    pic.Graphics.DrawPicture(p.Ship.Image, 0, 0, kSize, kSize, 0, 0, kShipSize, kShipSize)
		    g.DrawPicture(pic, 0, 0)
		    
		    Return True
		  End If
		  
		  
		  Return False
		  
		  Dim p As ShipController = ShipController(Me.RowTag(row))
		  g.ForeColor = p.ShipColor
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  If column = 4 Then
		    If Val(Me.Cell(row1, column)) > Val(Me.Cell(row2, column)) Then
		      result = 1
		    ElseIf Val(Me.Cell(row1, column)) < Val(Me.Cell(row2, column)) Then
		      result = -1
		    Else
		      result = 0
		    End If
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.ColumnAlignment(2) = ListBox.AlignRight
		  Me.ColumnAlignment(3) = ListBox.AlignRight
		  Me.ColumnAlignment(4) = ListBox.AlignRight
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LeadersList
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  If column = 2 Then
		    If Val(Me.Cell(row1, column)) > Val(Me.Cell(row2, column)) Then
		      result = 1
		    ElseIf Val(Me.Cell(row1, column)) < Val(Me.Cell(row2, column)) Then
		      result = -1
		    Else
		      result = 0
		    End If
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.ColumnAlignment(2) = ListBox.AlignRight
		  Me.ColumnAlignment(3) = ListBox.AlignRight
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  Return False
		  
		  If row > Me.ListCount-1 Then Return False
		  
		  Dim p As ShipController = ShipController(Me.RowTag(row))
		  g.ForeColor = p.ShipColor
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior

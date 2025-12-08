#tag DesktopWindow
Begin DesktopWindow MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   True
   HasMaximizeButton=   True
   HasMinimizeButton=   False
   HasTitleBar     =   True
   Height          =   750
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   220908098
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Xojo Wars"
   Type            =   0
   Visible         =   True
   Width           =   1000
   Begin DesktopCanvas BattleCanvas
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   472
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
      Tooltip         =   ""
      Top             =   46
      Transparent     =   False
      Visible         =   True
      Width           =   744
   End
   Begin Timer GameTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   5
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopLabel GameTimerLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   38
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
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c0000FF00
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   105
   End
   Begin DesktopButton StartButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Start"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   16
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Timer AITimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopListBox ScoreList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   5
      ColumnWidths    =   "40,*,50,80,60"
      DefaultRowHeight=   30
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   212
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
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   529
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   960
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabStop         =   True
      Text            =   "Leaderboard"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   235
   End
   Begin DesktopListBox LeadersList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   4
      ColumnWidths    =   "20,*,50,30"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   471
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
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   46
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   244
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel BattleLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   38
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
      TabStop         =   True
      Text            =   "Battle"
      TextAlignment   =   0
      TextColor       =   &c0000FF00
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   481
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
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
		  Var ai As ShipController
		  ai = New ShipController(AllPlayers.LastIndex + 2, BattleCanvas.Width, BattleCanvas.Height, p)
		  ai.Obstacles = Obstacles
		  AllPlayers.Add(ai)
		  
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
		    
		    Var winner As ShipController = ShipController(ScoreList.RowTagAt(0))
		    // If tied, rank by hits
		    BattleLabel.Text = "Winner: " + winner.GetName
		    BattleLabel.Tooltip = BattleLabel.Text
		    
		    For i As Integer = Players.LastIndex DownTo 0
		      If Players(i) <> winner Then
		        Players.RemoveAt(i)
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
		    Var sx As Integer = System.Random.InRange(0, BattleCanvas.Width)
		    Var sy As Integer = System.Random.InRange(0, BattleCanvas.Height)
		    StarField(i) = New Point(sx, sy)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitLeaderboard()
		  // Set up initial Leaderboard
		  LeadersList.RemoveAllRows
		  
		  For Each a As ShipController In AllPlayers
		    LeadersList.AddRow("", a.DisplayName, Str(a.TotalScore), Str(a.GamesPlayed))
		    LeadersList.RowTagAt(LeadersList.LastAddedRowIndex) = a
		  Next
		  
		  LeadersList.SortingColumn = 2
		  LeadersList.ColumnSortDirectionAt(2) = DesktopListBox.SortDirections.Descending
		  LeadersList.Sort
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RestoreLeaderboard()
		  // Load the leaderboard from saved file and then
		  // match up players to their entries in the leaderboard
		  // and restart contest at the appropriate last game number.
		  Var lbFile As FolderItem = SpecialFolder.Desktop.Child("Leaderboard.txt")
		  
		  If lbFile <> Nil And lbFile.Exists Then
		    Var input As TextInputStream
		    input = TextInputStream.Open(lbFile)
		    
		    Var minGames As Integer = 999
		    While Not input.EndOfFile
		      // Update Player with total score and GP
		      Var values() As String = input.ReadLine(Encodings.UTF8).Split(&u09)
		      
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
		  Var battleName As String = "Battle " + Str(CurrentBattle)
		  
		  // Sort the players by games played, lowest to highest.
		  AllPlayers.Shuffle
		  Var gp() As Integer
		  For Each p As ShipController In AllPlayers
		    gp.Add(p.GamesPlayed)
		  Next
		  gp.SortWith(AllPlayers)
		  
		  If AllPlayers(0).GamesPlayed < kGamesToPlay Then
		    // Keep playing until all players have played twice
		    For i As Integer = 0 To 3
		      Players.Add(AllPlayers(i))
		    Next
		    
		  Else
		    // Championship battle!
		    battleName = "Championship"
		    
		    // Play the top four scores.
		    For i As Integer = 0 To 3
		      Players.Add(LeadersList.RowTagAt(i))
		    Next
		    
		    //If 4th place is tied with 5th place (or later), then take remaining players that are
		    // tied with 4th place
		    Var p As ShipController
		    For i As Integer = 4 To LeadersList.LastRowIndex
		      p = ShipController(LeadersList.RowTagAt(i))
		      If p.TotalScore = Players(3).TotalScore Then
		        Players.Add(p)
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
		  
		  Players.RemoveAll
		  
		  UpdateLeaderboard
		  
		  SelectPlayersForBattle
		  
		  ScoreList.RemoveAllRows
		  
		  // Create Obstacles
		  Obstacles.RemoveAll
		  Var wormholes() As WormholeInfo
		  Var o As Obstacle
		  For i As Integer = 1 To 4
		    o = New Obstacle(System.Random.InRange(0, BattleCanvas.Width - Obstacle.kWidth), _
		    System.Random.InRange(0, BattleCanvas.Height - Obstacle.kHeight))
		    Obstacles.Add(o)
		    
		    Var w As New WormholeInfo
		    w.X = o.X
		    w.Y = o.Y
		    w.Height = o.Height
		    w.Width = o.Width
		    wormholes.Add(w)
		  Next
		  
		  // Initialize the ships and score list
		  Var shipColor As Integer
		  For Each a As ShipController In Players
		    a.SetShipColor(shipColor)
		    shipColor = shipColor + 1
		    
		    // Copy wormholes for each player so that they can't modify them for anyone else
		    Var whCopy() As WormholeInfo
		    For Each c As WormholeInfo In wormholes
		      Var w As New WormholeInfo
		      w.X = c.X
		      w.Y = c.Y
		      w.Height = c.Height
		      w.Width = c.Width
		      whCopy.Add(w)
		    Next
		    
		    a.GamesPlayed = a.GamesPlayed + 1
		    a.NewGame(BattleCanvas.Width, BattleCanvas.Height, whCopy)
		    
		    ScoreList.AddRow("", a.DisplayName, Str(a.Hits), Str(a.WasHit), Str(a.Hits - a.WasHit))
		    ScoreList.RowTagAt(ScoreList.LastAddedRowIndex) = a
		    ScoreList.RefreshCell(ScoreList.LastAddedRowIndex, 0)
		  Next
		  
		  GenerateStarfield
		  
		  // Start the game
		  StartTime = System.Microseconds
		  
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
		  
		  BattleCanvas.Refresh(False)
		  
		  StartBattle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLeaderboard()
		  Var a As ShipController
		  For i As Integer = 0 To LeadersList.LastRowIndex
		    a = ShipController(LeadersList.RowTagAt(i))
		    LeadersList.CellTextAt(i, 0) = Str(i + 1)
		    LeadersList.CellTextAt(i, 2) = Str(a.TotalScore)
		    LeadersList.CellTextAt(i, 3) = Str(a.GamesPlayed)
		  Next
		  
		  LeadersList.SortingColumn = 2
		  LeadersList.ColumnSortDirectionAt(2) = DesktopListbox.SortDirections.Descending
		  LeadersList.Sort
		  
		  For i As Integer = 0 To LeadersList.LastRowIndex
		    a = ShipController(LeadersList.RowTagAt(i))
		    LeadersList.CellTextAt(i, 0) = Str(i + 1)
		  Next
		  
		  // Save leaderboard in case of crash so that it can be restored
		  Var lbFile As FolderItem = SpecialFolder.Desktop.Child("Leaderboard.txt")
		  Var output As TextOutputStream
		  output = TextOutputStream.Create(lbFile)
		  
		  Var p As ShipController
		  For i As Integer = 0 To LeadersList.LastRowIndex
		    p = LeadersList.RowTagAt(i)
		    output.WriteLine(p.GetName + &u09 + LeadersList.CellTextAt(i, 2) + &u09 + LeadersList.CellTextAt(i, 3))
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
		Private StarField(50) As Point
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
		Sub Paint(g As Graphics, areas() As Rect)
		  // Draws everything at the current positions.
		  
		  g.DrawingColor = &c000000
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  // Starfield
		  g.DrawingColor = &cffffff
		  For i As Integer = 1 To 50
		    g.FillRectangle(StarField(i).X, StarField(i).Y, 2, 2)
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
		  BattleCanvas.Refresh(False)
		  
		  // Update scores
		  If Players.LastIndex >= 0 Then
		    Var a As ShipController
		    For i As Integer = 0 To ScoreList.LastRowIndex
		      a = ShipController(ScoreList.RowTagAt(i))
		      ScoreList.CellTextAt(i, 2) = Str(a.Hits)
		      ScoreList.CellTextAt(i, 3) = Str(a.WasHit)
		      ScoreList.CellTextAt(i, 4) = Str(a.Hits - a.WasHit)
		      
		      ScoreList.SortingColumn = 4
		      ScoreList.ColumnSortDirectionAt(4) = DesktopListBox.SortDirections.Descending
		      ScoreList.Sort
		    Next
		  End If
		  
		  If Not GameOver Then
		    Var elapsedSeconds As Double
		    If StartTime > 0 Then
		      elapsedSeconds = (System.Microseconds - StartTime) \ 1000000
		      GameTimerLabel.Text = Str((kGameSeconds + BonusTime) - elapsedSeconds, "###")
		    Else
		      GameTimerLabel.Text = "Ready"
		    End If
		    
		    If elapsedSeconds > kGameSeconds + BonusTime Then
		      If StopContest Then
		        // Stop contest if there is a winner (no ties).
		        // If there is a tie, then add 10 more seconds and continue
		        ScoreList.Sort
		        If Val(ScoreList.CellTextAt(0, 4)) = Val(ScoreList.CellTextAt(1, 4)) Then
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
		Sub Pressed()
		  StartContest
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AITimer
	#tag Event
		Sub Action()
		  For Each ai As ShipController In Players
		    // Update position of all other enemies
		    
		    Var allEnemyInfo() As EnemyInfo
		    
		    For Each enemy As ShipController In Players
		      If ai <> enemy Then
		        Var e As New EnemyInfo
		        e.X = enemy.X
		        e.Y = enemy.Y
		        e.Direction = enemy.Direction
		        e.Number = enemy.ShipNum
		        
		        Var m As MissileInfo
		        If enemy.Ship.Missile <> Nil Then
		          m = New MissileInfo
		          m.Direction = enemy.Ship.Missile.Direction
		          m.X = enemy.Ship.Missile.X
		          m.Y = enemy.Ship.Missile.Y
		          e.Missile = m
		        End If
		        
		        allEnemyInfo.Add(e)
		        
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
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row > Me.LastRowIndex Then Return False
		  
		  If column = 0 Then
		    Var p As ShipController = ShipController(Me.RowTagAt(row))
		    
		    Const kSize As Integer = 30
		    Var pic As New Picture(kSize, kSize)
		    pic.Graphics.FillRectangle(0, 0,kSize, kSize)
		    pic.Graphics.DrawPicture(p.Ship.Image, 0, 0, kSize, kSize, 0, 0, kShipSize, kShipSize)
		    g.DrawPicture(pic, 0, 0)
		    
		    Return True
		  End If
		  
		  
		  Return False
		  
		  Var p As ShipController = ShipController(Me.RowTagAt(row))
		  g.DrawingColor = p.ShipColor
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function RowComparison(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  If column = 4 Then
		    If Val(Me.CellTextAt(row1, column)) > Val(Me.CellTextAt(row2, column)) Then
		      result = 1
		    ElseIf Val(Me.CellTextAt(row1, column)) < Val(Me.CellTextAt(row2, column)) Then
		      result = -1
		    Else
		      result = 0
		    End If
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.ColumnAlignmentAt(2) = DesktopListBox.Alignments.Right
		  Me.ColumnAlignmentAt(3) = DesktopListBox.Alignments.Right
		  Me.ColumnAlignmentAt(4) = DesktopListBox.Alignments.Right
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LeadersList
	#tag Event
		Function RowComparison(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  If column = 2 Then
		    If Val(Me.CellTextAt(row1, column)) > Val(Me.CellTextAt(row2, column)) Then
		      result = 1
		    ElseIf Val(Me.CellTextAt(row1, column)) < Val(Me.CellTextAt(row2, column)) Then
		      result = -1
		    Else
		      result = 0
		    End If
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.ColumnAlignmentAt(2) = DesktopListBox.Alignments.Right
		  Me.ColumnAlignmentAt(3) = DesktopListBox.Alignments.Right
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  // Return False
		  
		  If row > Me.LastRowIndex Then Return False
		  
		  Var p As ShipController = ShipController(Me.RowTagAt(row))
		  g.DrawingColor = p.ShipColor
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="HasTitleBar"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
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
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
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
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior

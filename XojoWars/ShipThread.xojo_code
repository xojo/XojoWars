#tag Class
Protected Class ShipThread
Inherits Thread
	#tag Event
		Sub Run()
		  While GameActive
		    Dim start As Double = Microseconds
		    Controller.ProcessPlayer
		    Dim endTime As Double = Microseconds - start
		    endTime = endTime / 1000.0
		    
		    // Sleep a maximum of about 100ms
		    Dim sleepDiff As Double = 100.0 - endTime
		    
		    Sleep(sleepDiff)
		  Wend
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Controller As ShipController
	#tag EndProperty

	#tag Property, Flags = &h0
		Enemies() As EnemyInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		GameActive As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="GameActive"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

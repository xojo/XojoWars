#tag Module
Protected Module Globals
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Microseconds / 1000
			End Get
		#tag EndGetter
		Milliseconds As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.Randomizer
			End Get
		#tag EndGetter
		Rand As Random
	#tag EndComputedProperty


	#tag Constant, Name = kGameSeconds, Type = Double, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kGamesToPlay, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShipSize, Type = Double, Dynamic = False, Default = \"40", Scope = Public
	#tag EndConstant


	#tag Enum, Name = Directions, Type = Integer, Flags = &h0
		N
		  S
		  E
		  W
		  NE
		  SE
		  SW
		NW
	#tag EndEnum

	#tag Enum, Name = RotationTypes, Type = Integer, Flags = &h0
		None
		  Left
		Right
	#tag EndEnum


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
			Name="Milliseconds"
			Group="Behavior"
			Type="Double"
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
End Module
#tag EndModule

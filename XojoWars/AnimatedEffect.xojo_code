#tag Class
Protected Class AnimatedEffect
	#tag Method, Flags = &h0
		Sub Constructor(frames As Picture, x As Integer, y as Integer, duration As Double)
		  mStartTime = Microseconds * 0.000001
		  mDuration = duration
		  mFrames = frames
		  mX = x
		  mY = y
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Draw(g As Graphics)
		  Dim now As Double = Microseconds * 0.000001
		  Dim frameSize As Integer = mFrames.Width
		  Dim qtyFrames As Integer = mFrames.Height / frameSize
		  Dim curFrame As Integer = (now - mStartTime) / mDuration * qtyFrames
		  if curFrame >= qtyFrames then
		    Done = true
		  else
		    g.DrawPicture mFrames, mX - frameSize/2, mY - frameSize/2, frameSize, frameSize, _
		    0, curFrame * frameSize, frameSize, frameSize
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Done As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mDuration As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mFrames As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mStartTime As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mX As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mY As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Done"
			Group="Behavior"
			Type="Boolean"
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

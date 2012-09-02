#tag ClassProtected Class CustomToolbarItem	#tag Method, Flags = &h0		Function caption() As string		  return _caption		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub caption(assigns value as string)		  _caption=value		  captionChanged		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function CheckMouseDown(mdx as integer, mdy as integer, dragging as boolean) As boolean		  //check bounds		  mousehit=mdx>=x and mdx<=x+w and mdy>=y and mdy<=y+h		  		  if mouseHit and not dragging then 		    mouseHit=MouseDown(mdx, mdy)		  end if		  		  return mouseHit		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub CheckMouseOver(mox as integer, moy as integer)		  if mox>=x and mox<=x+w and moy>=y and moy<=y+h then		    mouseOver mox, moy		  else		    MouseLeave		  end if		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub Constructor(px as integer, py as integer, width as integer, height as integer, toolbar as customToolbar)		  x=px		  y=py		  parent=toolbar		  setupBuffer(width,height)		  lastlockedX=x		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function description() As string		  return _description		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub description(assigns desc as string)		  _description=desc		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub Destructor()		  //break circular references		  parent=nil		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function getLastX() As integer		  return x+width		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function height() As integer		  return h		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function lastLockedX() As integer		  return _lastlockedX		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub lastLockedX(assigns newx as integer)		  _lastLockedX=newx		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub offset(ox as integer, oy as integer)		  _x=_x+ox		  _y=_y+oy		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub Paint(g as graphics, dragging as boolean=false)		  //draw		  #pragma disableBackgroundTasks		  #pragma disableBoundsChecking		  		  Draw buffer.graphics, dragging		  g.drawpicture buffer,x,y		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function parent() As customToolbar		  return _parent		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub parent(assigns toolbar as customToolbar)		  _parent=toolbar		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub setSize(w as integer, h as integer)		  self.w=w		  self.h=h		End Sub	#tag EndMethod	#tag Method, Flags = &h1		Protected Sub setupBuffer(width as integer, height as integer)		  w=width		  h=height		  buffer=newpicture(width,height,32)		  buffer.transparent=1		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function width() As integer		  return w		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function X() As integer		  return _x		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub X(assigns newx as integer)		  _x=newx		  lastLockedX=x		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function Y() As integer		  return _y		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub Y(assigns newy as integer)		  _y=newy		End Sub	#tag EndMethod	#tag Hook, Flags = &h0		Event CaptionChanged()	#tag EndHook	#tag Hook, Flags = &h0		Event Draw(g as graphics, dragging as boolean)	#tag EndHook	#tag Hook, Flags = &h0		Event MouseDown(x as integer, y as integer) As boolean	#tag EndHook	#tag Hook, Flags = &h0		Event MouseLeave()	#tag EndHook	#tag Hook, Flags = &h0		Event MouseOver(x as integer, y as integer)	#tag EndHook	#tag Property, Flags = &h1		Protected buffer As picture	#tag EndProperty	#tag Property, Flags = &h1		Protected h As integer	#tag EndProperty	#tag Property, Flags = &h1		Protected mouseHit As boolean	#tag EndProperty	#tag Property, Flags = &h1		Protected w As integer	#tag EndProperty	#tag Property, Flags = &h1		Protected _caption As string	#tag EndProperty	#tag Property, Flags = &h1		Protected _description As string	#tag EndProperty	#tag Property, Flags = &h1		Protected _lastLockedX As integer	#tag EndProperty	#tag Property, Flags = &h1		Protected _parent As customToolbar	#tag EndProperty	#tag Property, Flags = &h1		Protected _x As integer	#tag EndProperty	#tag Property, Flags = &h1		Protected _y As integer	#tag EndProperty	#tag ViewBehavior		#tag ViewProperty			Name="Index"			Visible=true			Group="ID"			InitialValue="-2147483648"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Left"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Name"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Super"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Top"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty	#tag EndViewBehaviorEnd Class#tag EndClass
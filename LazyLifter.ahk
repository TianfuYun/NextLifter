;the home key starts/pauses this entire script
Home::Suspend, Toggle

;the left arrow key sends ctrl+i, stop clock
Left::Send ^i

;start clock
Right::Send ^u

;good lift
Up::Send ^j

;no lift
Down::Send ^k

;the page down key adds +2.5 to the active cell, or if the the active cell is empty it will be set to the value of the cell to the left +2.5
PgDn::
Cell := ComObjActive("Excel.Application").ActiveCell
if (Cell.Value) {
	Cell.Value += 2.5
} else {
	Cell.Value := Abs(Cell.Offset(0, -1).Value) + 2.5
}
return

;same as above but with -2.5
PgUp::
Cell := ComObjActive("Excel.Application").ActiveCell
if (Cell.Value) {
	Cell.Value -= 2.5
} else {
	Cell.Value := Abs(Cell.Offset(0, -1).Value) - 2.5
}
return

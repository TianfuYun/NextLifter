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
} else if Abs(Cell.Offset(0, -1).Value) > 0 {
	Cell.Value := Abs(Cell.Offset(0, -1).Value) + 2.5
} else {
	
}
return

;same as above but with -2.5
PgUp::
Cell := ComObjActive("Excel.Application").ActiveCell
if (Cell.Value) {
	Cell.Value -= 2.5
} else if Abs(Cell.Offset(0, -1).Value) > 0 {
	Cell.Value := Abs(Cell.Offset(0, -1).Value) - 2.5
} else {
	
}
return

^1:: ComObjActive("Excel.Application").Range("C4").Value := "Squat 1"

^2:: ComObjActive("Excel.Application").Range("C4").Value := "Squat 2"

^3:: ComObjActive("Excel.Application").Range("C4").Value := "Squat 3"

^4:: ComObjActive("Excel.Application").Range("C4").Value := "Bench Press 1"

^5:: ComObjActive("Excel.Application").Range("C4").Value := "Bench Press 2"

^6:: ComObjActive("Excel.Application").Range("C4").Value := "Bench Press 3"

^7:: ComObjActive("Excel.Application").Range("C4").Value := "Deadlift 1"

^8:: ComObjActive("Excel.Application").Range("C4").Value := "Deadlift 2"

^9:: ComObjActive("Excel.Application").Range("C4").Value := "Deadlift 3"

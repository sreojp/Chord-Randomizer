class_name ChordInfo
extends Resource

#mutations:
#0% - plays the same chord over and over
#X% - plays the same chord progression over and over
#X% - plays two chord progressions over and over
#X% - plays different chord progressions in the same key
#X% - plays random chord-progression-esque sequences e.g. motion by 2nd, 3rd, 4th, and so on
#X% - introduces a chance for modal borrowing for chords in the key
#X% - chance for chords in near keys (a couple fifths away)
#X% - total randomness


#hierarchy of chords to finish:
#sus 4's and sus 2's

var cmaj := preload("res://chordscreen/diagrams/Cmaj.PNG")
var cmaj_1 := preload("res://chordscreen/diagrams/CMaj_1.PNG")
var cmaj_2 := preload("res://chordscreen/diagrams/Cmaj_2.PNG")
var cmaj_3 := preload("res://chordscreen/diagrams/Cmaj_3.PNG")
var cmaj_4 := preload("res://chordscreen/diagrams/Cmaj_4.PNG")
var cm := preload("res://chordscreen/diagrams/Cm.PNG")
var c7 := preload("res://chordscreen/diagrams/C7.PNG")

var dmaj := preload("res://chordscreen/diagrams/Dmaj.PNG")
var dm := preload("res://chordscreen/diagrams/Dm.PNG")
var d7 := preload("res://chordscreen/diagrams/D7.PNG")

var emaj := {
	"name" : "Emaj", "lowest_fret" : "neck", "frets" : {
		0 : "open", 1 : 2, 2 : 2, 3 : 1, 4 : "open", 5 : "open",
		}
}

var em := {
	"name" : "Em", "lowest_fret" : "neck", "frets" : {
		0 : "open", 1 : 2, 2 : 2, 3 : "open", 4 : "open", 5 : "open",
		}
}
var e7 := preload("res://chordscreen/diagrams/E7.PNG")

var fmaj := preload("res://chordscreen/diagrams/Fmaj.PNG")
var fm := preload("res://chordscreen/diagrams/Fm.PNG")
var f7 := preload("res://chordscreen/diagrams/F7.PNG")

var gmaj := preload("res://chordscreen/diagrams/Gmaj.PNG")
var gm := preload("res://chordscreen/diagrams/Gm.PNG")
var g7 := preload("res://chordscreen/diagrams/G7.PNG")

var amaj := preload("res://chordscreen/diagrams/Amaj.PNG")
var am := {
	"name" : "Am", "lowest_fret" : "neck", "frets" : {
		0 : "mute", 1 : "open", 2 : 2, 3 : 2, 4 : "open", 5 : "open",
		}
}
var a7 := preload("res://chordscreen/diagrams/A7.PNG")

var bmaj := preload("res://chordscreen/diagrams/Bmaj.PNG")
var bm := preload("res://chordscreen/diagrams/Bm.PNG")
var b7 := preload("res://chordscreen/diagrams/B7.PNG")
var bdim := preload("res://chordscreen/diagrams/Bdim.PNG")

var all_chords := {
	0 : cmaj, 1 : cm, 2 : c7,
}


var common_chord_progressions := {
	1 : [0, 9, 5, 7],
	2 : [0, 7, 9, 5],
	3 : [9, 5, 0, 7],
	4 : [0, 7, 10, 5],
	5 : [5, 4, 1, 0],
	6 : [9, 2, 7, 0],
	}



var c_major := {
	1 : ["Cmaj", cmaj, 1, 3,],
	2 : ["Cmaj", cmaj_1, 3, 5,],
	3 : ["Cmaj", cmaj_2, 5, 7,],
	4 : ["Cmaj", cmaj_3, 7, 9,],
	5 : ["Cmaj", cmaj_4, 9, 11,],
	}

var c_minor := {
	1 : ["Cm", cm],
}

var c_seven := {
	1 : ["C7", c7]
}

var d_major

var d_minor

var e_major

var e_minor

var f_major

var f_minor

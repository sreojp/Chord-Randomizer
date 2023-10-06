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
#neck
var cmaj := {
	"name" : "Cmaj", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 2, 3 : "open", 4 : 1, 5 : "open",
		}
}
var cmaj_1 := {
	"name" : "Cmaj", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 3], 2 : 5, 3 : 5, 4 : 5, 5 : "endbar",
		}
}
#below 6
var cmaj_2 := {
	"name" : "Cmaj", "lowest_fret" : 4, "frets" : {
		0 : "muted", 1 : "muted", 2 : ["startbar", 5], 3 : "continuebar", 4 : "endbar", 5 : 8,
		}
}
#below 10
var cmaj_3 := {
	"name" : "Cmaj", "lowest_fret" : 7, "frets" : {
		0 : ["startbar", 8], 1 : 10, 2 : 10, 3 : 2, 4 : "continuebar", 5 : "continuebar",
		}
}
#anywhere
var cmaj_4 := {
	"name" : "Cmaj", "lowest_fret" : 9, "frets" : {
		0 : "muted", 1 : "muted", 2 : 10, 3 : 12, 4 : 13, 5 : 12,
		}
}
#neck
var cm := {
	"name" : "Cm", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 3], 2 : 5, 3 : 5, 4 : 4, 5 : "endbar",
		}
}
var cm_1 := {
	"name" : "Cm", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 1, 3 : "open", 4 : 1, 5 : 3,
		}
}
#below 10
var cm_2 := {
	"name" : "Cm", "lowest_fret" : 7, "frets" : {
		0 : ["startbar", 8], 1 : 10, 2 : 10, 3 : "continuebar", 4 : "continuebar", 5 : "endbar",
		}
}
#anywhere
var cm_3 := {
	"name" : "Cm", "lowest_fret" : 9, "frets" : {
		0 : "muted", 1 : "muted", 2 : 10, 3 : 12, 4 : 13, 5 : 11,
		}
}
#neck
var c7 := {
	"name" : "C7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 2, 3 : 3, 4 : 1, 5 : "open",
		}
}
var c7_1 := {
	"name" : "C7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 2, 3 : 3, 4 : 1, 5 : 3,
		}
}
var c7_2 := {
	"name" : "C7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 2, 3 : 3, 4 : 1, 5 : "muted",
		}
}
var c7_3 := {
	"name" : "C7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 3], 2 : 5, 3 : "continuebar", 4 : 5, 5 : "endbar",
		}
}
#below 6
var c7_4 := {
	"name" : "C7", "lowest_fret" : 3, "frets" : {
		0 : "muted", 1 : "muted", 2 : ["startbar", 5], 3 : "continuebar", 4 : "endbar", 5 : 6,
		}
}
#below 10
var c7_5 := {
	"name" : "C7", "lowest_fret" : 7, "frets" : {
		0 : "muted", 1 : "muted", 2 : ["startbar", 8], 3 : 9, 4 : "continuebar", 5 : "endbar",
		}
}
var c7_6 := {
	"name" : "C7", "lowest_fret" : 7, "frets" : {
		0 : 8, 1 : "muted", 2 : 8, 3 : 9, 4 : 8, 5 : "muted",
		}
}
var c7_7 := {
	"name" : "C7", "lowest_fret" : 7, "frets" : {
		0 : ["startbar", 8], 1 : 10, 2 : "continuebar", 3 : 9, 4 : "continuebar", 5 : "endbar",
		}
}
#anywhere
var c7_8 := {
	"name" : "C7", "lowest_fret" : 9, "frets" : {
		0 : "muted", 1 : "muted", 2 : 10, 3 : 12, 4 : 11, 5 : 12,
		}
}
var c7_9 := {
	"name" : "C7", "lowest_fret" : 12, "frets" : {
		0 : "muted", 1 : "muted", 2 : 14, 3 : 15, 4 : 13, 5 : 15,
		}
}
#neck
var cdim := {
	"name" : "Cdim", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 4, 3 : 5, 4 : 4, 5 : "muted",
		}
}
#below 10
var cdim_2 := {
	"name" : "Cdim", "lowest_fret" : 7, "frets" : {
		0 : ["startbar", 8], 1 : 9, 2 : 10, 3 : "endbar", 4 : "4muted", 5 : "muted",
		}
}
#neck
var cdim7 := {
	"name" : "Cdim7", "lowest_fret" : "neck", "frets" : {
		0 : 2, 1 : "muted", 2 : ["startbar", 1], 3 : 2, 4 : "endbar", 5 : "muted",
		}
}
var cdim7_1 := {
	"name" : "Cdim7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 4, 3 : 2, 4 : 4, 5 : "muted",
		}
}
var cdim7_2 := {
	"name" : "Cdim7", "lowest_fret" : "neck", "frets" : {
		0 : 5, 1 : "muted", 2 : ["startbar", 4], 3 : 5, 4 : "endbar", 5 : "muted",
		}
}
#below 6
var cdim7_3 := {
	"name" : "Cdim7", "lowest_fret" : 3, "frets" : {
		0 : "muted", 1 : 6, 2 : 7, 3 : 5, 4 : 7, 5 : "muted",
		}
}
#below 10
var cdim7_4 := {
	"name" : "Cdim7", "lowest_fret" : 5, "frets" : {
		0 : 8, 1 : "muted", 2 : ["startbar", 7], 3 : 8, 4 : "endbar", 5 : "muted",
		}
}
var cdim7_5 := {
	"name" : "Cdim7", "lowest_fret" : 7, "frets" : {
		0 : "muted", 1 : 9, 2 : 10, 3 : 8, 4 : 10, 5 : "muted",
		}
}
#anywhere
var cdim7_6 := {
	"name" : "Cdim7", "lowest_fret" : 9, "frets" : {
		0 : 11, 1 : "muted", 2 : ["startbar", 10], 3 : 11, 4 : "endbar", 5 : "muted",
		}
}
var cdim7_7 := {
	"name" : "Cdim7", "lowest_fret" : 9, "frets" : {
		0 : "muted", 1 : "muted", 2 : 10, 3 : 11, 4 : 10, 5 : 11,
		}
}
var cdim7_8 := {
	"name" : "Cdim7", "lowest_fret" : 10, "frets" : {
		0 : "muted", 1 : 12, 2 : 13, 3 : 11, 4 : 13, 5 : "muted",
		}
}
var cdim7_9 := {
	"name" : "Cdim7", "lowest_fret" : 12, "frets" : {
		0 : 14, 1 : "muted", 2 : ["startbar", 13], 3 : 14, 4 : "endbar", 5 : "muted",
		}
}
#neck
var caug := {
	"name" : "Caug", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 2, 3 : 1, 4 : 1, 5 : "open",
		}
}
var caug_1 := {
	"name" : "Caug", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 2, 3 : 1, 4 : 1, 5 : "open",
		}
}
var caug_2 := {
	"name" : "Caug", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 2, 3 : 1, 4 : 1, 5 : "muted",
		}
}
#below 6
var caug_3 := {
	"name" : "Caug", "lowest_fret" : 3, "frets" : {
		0 : "muted", 1 : "muted", 2 : 6, 3 : 5, 4 : 5, 5 : 4,
		}
}
var caug_4 := {
	"name" : "Caug", "lowest_fret" : 4, "frets" : {
		0 : 8, 1 : 7, 2 : 6, 3 : ["startbar", 5], 4 : "endbar", 5 : "muted",
		}
}
#below 10
var caug_5 := {
	"name" : "Caug", "lowest_fret" : 7, "frets" : {
		0 : "muted", 1 : "muted", 2 : 10, 3 : 9, 4 : 9, 5 : 8,
		}
}
#anywhere
var caug_6 := {
	"name" : "Caug", "lowest_fret" : 11, "frets" : {
		0 : "muted", 1 : "muted", 2 : 14, 3 : 13, 4 : 13, 5 : 12,
		}
}
#neck
var csus2 := {
	"name" : "Csus2", "lowest_fret" : 3, "frets" : {
		0 : "muted", 1 : ["start_bar", 3], 2 : 5, 3 : 5, 4 : "continuebar", 5 : "endbar",
		}
}
#anywhere
var csus2_1 := {
	"name" : "Csus2", "lowest_fret" : 9, "frets" : {
		0 : "muted", 1 : "muted", 2 : ["startbar", 10], 3 : 12, 4 : 13, 5 : "endbar",
		}
}
#neck													FINISHED UP TO THIS POINT
var csus := {
	"name" : "Csus", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : 3, 3 : "open", 4 : 1, 5 : "muted",
		}
}
var cmaj7 := {
	"name" : "Cmaj7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 2, 3 : 4, 4 : 1, 5 : 3,
		}
}
var cm7 := {
	"name" : "Cm7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 3, 2 : ["startbar", 2], 3 : 3, 4 : "endbar", 5 : "muted",
		}
}
var cm7_1 := {
	"name" : "Cm7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 1], 2 : "continuebar", 3 : 3, 4 : "endbar", 5 : 3,
		}
}
var db := {
	"name" : "C#/Dbmaj", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 4, 2 : 3, 3 : ["startbar", 1], 4 : 2, 5 : "endbar",
		}
}
var dbm := {
	"name" : "C#m/Dbm", "lowest_fret" : 4, "frets" : {
		0 : "muted", 1 : ["startbar", 4], 2 : 6, 3 : 6, 4 : 5, 5 : "endbar",
		}
}
var db7 := {
	"name" : "C#7/Db7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 4, 2 : 3, 3 : 4, 4 : 2, 5 : "muted",
		}
}
var db7_1 := {
	"name" : "C#7/Db7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 3, 3 : 4, 4 : 2, 5 : 4,
		}
}
var dbdim := {
	"name" : "C#dim/Dbdim", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 4, 2 : 5, 3 : 6, 4 : 5, 5 : "muted",
		}
}
var dbdim7 := {
	"name" : "C#dim7/Dbdim7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 1, 2 : 2, 3 : 0, 4 : 2, 5 : "muted",
		}
}
var dbaug := {
	"name" : "C#aug/Dbaug", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 3, 3 : 2, 4 : 2, 5 : 1,
		}
}
var dbsus2 := {
	"name" : "C#sus2/Dbsus2", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 4], 2 : 6, 3 : 6, 4 : "continuebar", 5 : "endbar",
		}
}
var dbsus := {
	"name" : "C#sus/Dbsus", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 4, 2 : 4, 3 : 1, 4 : 2, 5 : "muted",
		}
}
var dbmaj7 := {
	"name" : "C#maj7/Dbmaj7", "lowest_fret" : "neck", "frets" : {
		0 : ["startbar", 1], 1 : 4, 2 : 3, 3 : "continuebar", 4 : "continuebar", 5 : "endbar",
		}
}
var dbm7 := {
	"name" : "C#m7/Dbm7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 4, 2 : ["startbar", 2], 3 : 4, 4 : "endbar", 5 : "muted",
		}
}
var dbm7_1 := {
	"name" : "C#m7/Dbm7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 2], 2 : "continuebar", 3 : 4, 4 : "endbar", 5 : 4,
		}
}
var dmaj := {
	"name" : "Dmaj", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : "open", 3 : 2, 4 : 3, 5 : 2,
		}
}
var dm := {
	"name" : "Dm", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : "open", 3 : 2, 4 : 3, 5 : 1,
		}
}
var d7 := {
	"name" : "D7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : "open", 3 : 2, 4 : 1, 5 : 2,
		}
}
var ddim := {
	"name" : "Ddim", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 5, 2 : 6, 3 : 7, 4 : 6, 5 : "muted",
		}
}
var ddim7 := {
	"name" : "Ddim", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 0, 3 : 1, 4 : 0, 5 : 1,
		}
}
var ddim7_1 := {
	"name" : "Ddim", "lowest_fret" : "neck", "frets" : {
		0 : 1, 1 : "muted", 2 : 0, 3 : 1, 4 : 0, 5 : "muted",
		}
}
var ddim7_2 := {
	"name" : "D7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 2, 2 : 3, 3 : 1, 4 : 3, 5 : "muted",
		}
}
var daug := {
	"name" : "Daug", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 0, 3 : 3, 4 : 3, 5 : 2,
		}
}
var daug_1 := {
	"name" : "Daug", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 4, 3 : 3, 4 : 3, 5 : 2,
		}
}
var dsus2 := {
	"name" : "Dsus2", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 0, 3 : 2, 4 : 3, 5 : 0,
		}
}
var dsus := {
	"name" : "Dsus2", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 0, 3 : 2, 4 : 3, 5 : 3,
		}
}
var dmaj7 := {
	"name" : "Dmaj7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 0, 3 : ["startbar", 2], 4 : "continuebar", 5 : "endbar",
		}
}
var dm7 := {
	"name" : "Dm7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "muted", 2 : 0, 3 : 2, 4 : 1, 5 : 1,
		}
}
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
var e7 := {
	"name" : "Em", "lowest_fret" : "neck", "frets" : {
		0 : "open", 1 : 2, 2 : "open", 3 : 1, 4 : "open", 5 : "open",
		}
}
var fmaj := {
	"name" : "Fmaj", "lowest_fret" : "neck", "frets" : {
		0 : ["startbar", 1], 1 : 3, 2 : 3, 3 : 2, 4 : "continuebar", 5 : "endbar",
		}
}
var fm := {
	"name" : "Fm", "lowest_fret" : "neck", "frets" : {
		0 : ["startbar", 1], 1 : 3, 2 : 3, 3 : "continuebar", 4 : "continuebar", 5 : "endbar",
		}
}
var f7 := {
	"name" : "F7", "lowest_fret" : "neck", "frets" : {
		0 : ["startbar", 1], 1 : 3, 2 : "continuebar", 3 : 2, 4 : "continuebar", 5 : "endbar",
		}
}
var gmaj := {
	"name" : "Gmaj", "lowest_fret" : "neck", "frets" : {
		0 : 3, 1 : 2, 2 : "open", 3 : "open", 4 : "open", 5 : 3,
		}
}
var gm := {
	"name" : "Gm", "lowest_fret" : "neck", "frets" : {
		0 : ["startbar", 3], 1 : 5, 2 : 5, 3 : "continuebar", 4 : "continuebar", 5 : "continuebar",
		}
}
var g7 := {
	"name" : "G7", "lowest_fret" : "neck", "frets" : {
		0 : 3, 1 : 2, 2 : "open", 3 : "open", 4 : "open", 5 : 1,
		}
}
var amaj := {
	"name" : "Amaj", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "open", 2 : 2, 3 : 2, 4 : 1, 5 : "open",
		}
}
var am := {
	"name" : "Am", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "open", 2 : 2, 3 : 2, 4 : 1, 5 : "open",
		}
}
var a7 := {
	"name" : "Am", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : "open", 2 : 2, 3 : "open", 4 : 2, 5 : "open",
		}
}
var bmaj := {
	"name" : "Bmaj", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 2], 2 : 4, 3 : 4, 4 : 4, 5 : "endbar",
		}
}
var bm := {
	"name" : "Bm", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : ["startbar", 2], 2 : 4, 3 : 4, 4 : 3, 5 : "endbar",
		}
}
var b7 := {
	"name" : "B7", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 2, 2 : 1, 3 : 2, 4 : "open", 5 : 2,
		}
}
var bdim := {
	"name" : "Bdim", "lowest_fret" : "neck", "frets" : {
		0 : "muted", 1 : 2, 2 : 3, 3 : 4, 4 : 3, 5 : "muted",
		}
}


var all_chords := {
	0 : cmaj, 1 : cmaj_1, 2 : cmaj_2, 3 : cmaj_3, 4 : cmaj_4,
	5 : cm, 
}

var all_first_position_chords := [cmaj, cmaj_1, cm, cdim, caug, caug_1, caug_2, csus2,
	csus, cmaj7, cm7, cm7_1, db, ]

var all_chords_below_six := [cmaj, cmaj_1, cmaj_2, cm, cm_1, c7, c7_1, c7_2, c7_3, c7_4, cdim, cdim7,
	cdim7_1, cdim7_2, cdim7_3,  ]

var common_chord_progressions := {
	0 : [0, 5, 3, 4],
	1 : [0, 4, 5, 3],
	2 : [5, 3, 0, 4],
	3 : [0, 7, 10, 5],
	4 : [5, 1, 3, 0],
	}

var c_major_key_root := [cmaj, dm, em, fmaj, gmaj, am, bdim]


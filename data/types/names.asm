TypeNames:
	table_width 2

	dw .Normal
	dw .Fighting
	dw .Flying
	dw .Poison
	dw .Ground
	dw .Rock
	dw .Bird
	dw .Bug
	dw .Ghost

REPT UNUSED_TYPES_END - UNUSED_TYPES
	dw .Normal
ENDR

	dw .Fire
	dw .Water
	dw .Grass
	dw .Electric
	dw .Psychic
	dw .Ice
	dw .Dragon

	assert_table_length NUM_TYPES

.Normal:   db "NORMALAN@"
.Fighting: db "BORBENI@"
.Flying:   db "LETEĆI@"
.Poison:   db "OTROV@"
.Fire:     db "VATRA@"
.Water:    db "VODA@"
.Grass:    db "TRAVA@"
.Electric: db "STRUJA@"
.Psychic:  db "PSIHIČKI@"
.Ice:      db "LED@"
.Ground:   db "ZEMLJA@"
.Rock:     db "KAMEN@"
.Bird:     db "PTICA@"
.Bug:      db "BUBA@"
.Ghost:    db "DUH@"
.Dragon:   db "ZMAJA@"

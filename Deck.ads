with Cards, Ada.Numerics.Discrete_Random;
use Cards;

package Deck is

	function Draw return Card;

private
	type Index_Type is range 1 .. 52;

	package Random_Index is new Ada.Numerics.Discrete_Random(Index_Type);
	use Random_Index;

	Index_Generator : Random_Index.Generator;

	type Deck_Card is new Card with record
		In_Deck : Boolean := True;
	end record;

	type Card_Array is array(Index_Type) of Deck_Card;

	Backing : Card_Array := (
		Deck_Card'(Face=>2, Suit=> Heart, realFace => 2, others => <>),
		Deck_Card'(Face=>3, Suit=>Heart, realFace => 3,others => <>),
		Deck_Card'(Face=>4, Suit=>Heart, realFace => 4,others => <>),
		Deck_Card'(Face=>5, Suit=>Heart, realFace => 5,others => <>),
		Deck_Card'(Face=>6, Suit=>Heart, realFace => 6,others => <>),
		Deck_Card'(Face=>7, Suit=>Heart, realFace => 7,others => <>),
		Deck_Card'(Face=>8, Suit=>Heart, realFace => 8,others => <>),
		Deck_Card'(Face=>9, Suit=>Heart, realFace => 9,others => <>),
		Deck_Card'(Face=>10, Suit=>Heart, realFace => 10,others => <>),
		Deck_Card'(Face=>11, Suit=>Heart, realFace => 10,others => <>),
		Deck_Card'(Face=>12, Suit=>Heart, realFace => 10,others => <>),
		Deck_Card'(Face=>13, Suit=>Heart, realFace => 10,others => <>),
		Deck_Card'(Face=>14, Suit=>Heart, realFace => 11,others => <>),
		Deck_Card'(Face=>2, Suit=>Spade, realFace => 2,others => <>),
		Deck_Card'(Face=>3, Suit=>Spade, realFace => 3,others => <>),
		Deck_Card'(Face=>4, Suit=>Spade, realFace => 4,others => <>),
		Deck_Card'(Face=>5, Suit=>Spade, realFace => 5,others => <>),
		Deck_Card'(Face=>6, Suit=>Spade, realFace => 6,others => <>),
		Deck_Card'(Face=>7, Suit=>Spade, realFace => 7,others => <>),
		Deck_Card'(Face=>8, Suit=>Spade, realFace => 8,others => <>),
		Deck_Card'(Face=>9, Suit=>Spade, realFace => 9,others => <>),
		Deck_Card'(Face=>10, Suit=>Spade, realFace => 10,others => <>),
		Deck_Card'(Face=>11, Suit=>Spade, realFace => 10,others => <>),
		Deck_Card'(Face=>12, Suit=>Spade, realFace => 10,others => <>),
		Deck_Card'(Face=>13, Suit=>Spade, realFace => 10,others => <>),
		Deck_Card'(Face=>14, Suit=>Spade, realFace => 11,others => <>),
		Deck_Card'(Face=>2, Suit=>Diamond, realFace => 2,others => <>),
		Deck_Card'(Face=>3, Suit=>Diamond, realFace => 3,others => <>),
		Deck_Card'(Face=>4, Suit=>Diamond, realFace => 4,others => <>),
		Deck_Card'(Face=>5, Suit=>Diamond, realFace => 5,others => <>),
		Deck_Card'(Face=>6, Suit=>Diamond, realFace => 6,others => <>),
		Deck_Card'(Face=>7, Suit=>Diamond, realFace => 7,others => <>),
		Deck_Card'(Face=>8, Suit=>Diamond, realFace => 8,others => <>),
		Deck_Card'(Face=>9, Suit=>Diamond, realFace => 9,others => <>),
		Deck_Card'(Face=>10, Suit=>Diamond, realFace => 10,others => <>),
		Deck_Card'(Face=>11, Suit=>Diamond, realFace => 10,others => <>),
		Deck_Card'(Face=>12, Suit=>Diamond, realFace => 10,others => <>),
		Deck_Card'(Face=>13, Suit=>Diamond, realFace => 10,others => <>),
		Deck_Card'(Face=>14, Suit=>Diamond, realFace => 11,others => <>),
		Deck_Card'(Face=>2, Suit=>Club, realFace => 2,others => <>),
		Deck_Card'(Face=>3, Suit=>Club, realFace => 3,others => <>),
		Deck_Card'(Face=>4, Suit=>Club, realFace => 4,others => <>),
		Deck_Card'(Face=>5, Suit=>Club, realFace => 5,others => <>),
		Deck_Card'(Face=>6, Suit=>Club, realFace => 6,others => <>),
		Deck_Card'(Face=>7, Suit=>Club, realFace => 7,others => <>),
		Deck_Card'(Face=>8, Suit=>Club, realFace => 8,others => <>),
		Deck_Card'(Face=>9, Suit=>Club, realFace => 9,others => <>),
		Deck_Card'(Face=>10, Suit=>Club, realFace => 10,others => <>),
		Deck_Card'(Face=>11, Suit=>Club, realFace => 10,others => <>),
		Deck_Card'(Face=>12, Suit=>Club, realFace => 10,others => <>),
		Deck_Card'(Face=>13, Suit=>Club, realFace => 10,others => <>),
		Deck_Card'(Face=>14, Suit=>Club, realFace => 11,others => <>)
	);

end Deck;
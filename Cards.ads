package Cards is

	subtype Face_Type is Integer range 0 .. 14;

	type Suit_Type is (Heart, Spade, Diamond, Club);

	type Card is tagged record
		Face : Face_Type;
		Suit : Suit_Type;
		RealFace:Face_Type;
	end record;

	function Image(Self : Card) return String;

end Cards;
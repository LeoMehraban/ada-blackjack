with Ada.Text_IO; use Ada.Text_IO;
with Cards; use Cards;
with Deck; use Deck;

procedure MathGame is
    subtype Two is Integer range 0 .. 1;
    type PlayerArray is array(Two) of Card;
    Player1:PlayerArray := (Deck.Draw , Deck.Draw);
    Player2:PlayerArray := (Deck.Draw , Deck.Draw);
    Player1Sum:Integer := 0;
    Player2Sum:Integer := 0;
    Temp1:Character;
    Temp2:Integer := Player1'Length + 1;
    Temp3:Integer := Player2'Length + 1;
    Player1HitCard:Card := Card'(Face=>0 , RealFace=>0, Suit=>Club);
    Player2HitCard:Card := Card'(Face=>0 , RealFace=>0, Suit=>Club);
    type Options is (Hit,Stand);
    Option:Options;
begin
   Put_Line("two player blackjack with no dealer");
   Put_Line("note: in this impementation, aces cannot be one. thay must be 11.");
   Put_Line("note: thare is still a bug with hitting more then once. so if you can, hit once");
   loop
      Put_Line("player 1 cards: ");
      for P in Integer range 0 .. Temp2 loop
        if P < Player1'Length then
            Put_Line(Cards.Image(Player1(P))); 
        else
            Put_Line(Cards.Image(Player1HitCard));
        end if;
      end loop;
      New_Line;
      Put_Line("player 2 cards: ");
      for P in Integer range 0 .. Temp3 loop
        if P < Player2'Length then
            Put_Line(Cards.Image(Player2(P))); 
        else
            Put_Line(Cards.Image(Player2HitCard));
        end if;
      end loop;
      <<Start>>
      Put_Line("player 1: [H]it, or [S]tand");
      Get_Immediate(Temp1);
      case Temp1 is 
        when 'h' | 'H' => Option := Hit;
        when 'S' | 's' => Option := Stand;
        when others => goto Start;
      end case;
      case Option is 
        when Hit => 
            Player1HitCard := Deck.Draw;
            Put_Line("you drew a " & Cards.Image(Player1HitCard));
            goto Start;
        when Stand => null;
        when others => null;
      end case;
      <<Start2>>
      Put_Line("player 2: [H]it, or [S]tand");
      Get_Immediate(Temp1);
      case Temp1 is 
        when 'h' | 'H' => Option := Hit;
        when 'S' | 's' => Option := Stand;
        when others => goto Start2;
      end case;
      case Option is 
        when Hit => 
            Player2HitCard := Deck.Draw;
            Put_Line("you drew a " & Cards.Image(Player2HitCard));
            goto Start2;
        when Stand => null;
        when others => null;
      end case;
      Player1Sum := Player1Sum + Player1(0).RealFace + Player1(1).RealFace + Player1HitCard.RealFace;
      Player2Sum := Player2Sum + Player2(0).RealFace + Player2(1).RealFace + Player2HitCard.RealFace;
      if Player1Sum > 21 then
         Put_Line("player 1 busts! player 2 wins");
         return;
       elsif Player2Sum > 21 then
          Put_Line("player 2 busts! player 1 wins!");
          return;
        elsif Player2Sum = 21 then
           Put_Line("player 2 has 21! he (or she) wins");
           return;
        elsif Player1Sum = 21 then
          Put_Line("player 1 has 21! he (or she) wins");
          return;
        else
            Put_Line("player 1 has " & Player1Sum'Img & "and player 2 has " & Player2Sum'Img);
      end if;
      Put_Line("[Q]uit?");
      Get_Immediate(Temp1);
      if Temp1 = 'q' or Temp1 = 'Q' then
        return;
      end if;
   end loop;
end MathGame;
 #include <adv3.h>
 #include <en_us.h>

 versionInfo: GameID
   name = 'Creepy Sprinkles'
   byline = 'by Matt Wassle, Mary Thurman, Nicolas Peckman'
   authorEmail = 'Nicolas Peckman <elijahpeckman@gmail.com>'
   desc = 'Horror game'
   version = '1'
   IFID = 'B3ED0CF7-895A-47F0-B290-D2D2B97D0505'
 ;

 gameMain: GameMainDef
 {
 	initialPlayerChar = me
 	
 	showIntro(){
 		"You wake up.\n
 		You pry yourself from the frigid ground, body numb from the cold.
 		You're adrift in a whispering sea of tall stalks.
 		You don't remember how you got here.
 		As you stare at the black sky, wondering how you can return to a place of warmth and light, you see you are lying in a pool of blood.
 		Frantically you check yourself for wounds and realize that you are lying in someone else's blood.";
 	}
 }
 
 class DeadEnd: OutdoorRoom
        desc="<IMG SRC='assets/images/DeadEnd.png' WIDTH=384 HEIGHT=216>\n
            A deadend looms ahead. You must go back."
;

 startRoom: OutdoorRoom 'The Heart'
 	"<IMG SRC='assets/images/StraightAhead.png' WIDTH=384 HEIGHT=216>\n
        The Heart of the field. All you see is whithered stalkeds and a narrow path ahead."
 	south = f1
 ;

 +me: Actor
    pcDesc = "You need to escape from this field.";
 ; 
 
 f1: OutdoorRoom 'Fork 1'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    A bird’s squawk breaks through your consciousness and you realize you’re standing at a fork in the endless sea of corn"
 	north = startRoom
 	east = f2
        west = f5
 ;
 
 f2: OutdoorRoom 'Fork 2'
 	"<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
        The hollow rustling has become as steady as the beat of your heart. You are unsure if it is even an indication of a creature, or just the wind."
 	west = f1
        east = f3
        north = d1
 ;

f3: OutdoorRoom 'Fork 3'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
     At the next turn you see another, then another. How large is this place?"
    west = f2
    south = d2
    north = f4
;
f4: OutdoorRoom 'Fork 4'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    The corn sounds like voices, and you find yourself whispering nonsense just to hear a human voice."
    east = d3
    south = f3
    west = d4
;
f5: OutdoorRoom 'Fork 5'
    "<IMG SRC='assets/images/3turn.png' WIDTH=384 HEIGHT=216>\n
    At the next turn you see another, then another. How large is this place?"
    east = f1
    west = f6
    north = f21
    south = f25
;

f6: OutdoorRoom 'Fork 6'
    east = f5
;

f21: OutdoorRoom 'Fork 21'
    south = f5
;

f25: OutdoorRoom 'Fork 25'
    north = f5
;

d1: DeadEnd 'Deadend'
    south = f2
;

d2: DeadEnd 'Deadend' 
    north = f3
;

d3: DeadEnd 'Deadend'
    west = f4
;

d4: DeadEnd 'Deadend'
    east = f4
;
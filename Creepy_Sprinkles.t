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
 
 startRoom: OutdoorRoom 'The Heart'
 	"The Heart of the Field"
 	south = s1
 ;

 +me: Actor
 ; 
 
 
 s1: OutdoorRoom 'First Split'
 	"<IMG SRC='assets/images/2turn.png'>You are presented with <b>two</b> different directions."
 	north = startRoom
 	east = s2
 ;
 
 s2: OutdoorRoom 'Second Split'
 	"More splitting"
 	west = s1
 	north = deadend
 ;
 
 deadend: OutdoorRoom 'Deadend'
 	"Turn back!"
 	west = startRoom
 ;
 
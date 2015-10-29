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
 	initialPlayerChar = me
 ;
 
 startRoom: OutdoorRoom 'Heart of the Corn'
 	"You start here"
 	south = s1
 ;
 
 s1: OutdoorRoom 'First Split'
 	"<IMG SRC='assets/images/2turn.png'>You are presented with <b>two</b> different directions."
 	north = startRoom
 ;

 +me: Actor
 ; 
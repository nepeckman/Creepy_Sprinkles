 #include <adv3.h>
 #include <en_us.h>

 gameMain: GameMainDef
   initialPlayerChar = me
 ;

 versionInfo: GameID
   name = 'Creepy Sprinkles'
   byline = 'by Matt Wassle, Mary Thurman, Nicolas Peckman'
   authorEmail = 'Nicolas Peckman <elijahpeckman@gmail.com>'
   desc = 'Horror game'
   version = '1'
   IFID = 'B3ED0CF7-895A-47F0-B290-D2D2B97D0505'
 ;

 firstRoom: Room 'Starting Room'
   "This is the boring starting room."
 ;

 +me: Actor
 ; 
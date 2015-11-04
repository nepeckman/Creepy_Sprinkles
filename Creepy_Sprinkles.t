 #include <adv3.h>
 #include <en_us.h>

 versionInfo: GameID
   name = 'Corn Labyrinth'
   byline = 'by Matt Wassle, Mary Thurman, Nicolas Peckman, Sifron Benjamin, Luke Tannenbaum; contributions from Anika Khan'
   authorEmail = 'Nicolas Peckman <elijahpeckman@gmail.com>'
   desc = 'You wake up in a field of corn...'
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
 	"<SOUND SRC='assets/music/music.wav' REPEAT='true'><IMG SRC='assets/images/StraightAhead.png' WIDTH=384 HEIGHT=216>\n
        The Heart of the field. All you see is whithered stalkeds and a narrow path ahead."
 	south = f1
 ;

 +me: Actor
    pcDesc = "You need to escape from this field.";
 ; 
 
 f1: OutdoorRoom 'Fork 1'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You see something scrawled in blood on the cold earth. \"Help! I think there's something in here with me. I've lost track of time, been in here so long. 
Even now, I can hear it behind me. Following me. Waiting. Watching. I know it won't be long until it catches up with me. I need to get out of here.\""
 	north = startRoom
 	east = f2
        west = f5
 ;
 
 f2: OutdoorRoom 'Fork 2'
 	"<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
        The waving corn is hypnotizing. You find your mind wandering while your body is moving."
 	west = f1
        east = f3
        north = d1
 ;

f3: OutdoorRoom 'Fork 3'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
     At the next turn you see another, then another. How large is this place?"
    west = f2
    south = f10
    north = f4
;
f4: OutdoorRoom 'Fork 4'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    In a moment of calm you start picking all of the turns in one direction until you hit a dead end and then start picking the other direction. Still the corn twists around you as the night swirls into blacker and blacker darkness."
    east = d3
    south = f3
    west = d4
;
f5: OutdoorRoom 'Fork 5'
    "<IMG SRC='assets/images/3turn.png' WIDTH=384 HEIGHT=216>\n
    The dried stalks crackle as you walk past them. They seem taller than before."
    east = f1
    west = f6
    north = f21
    south = f24
;

f6: OutdoorRoom 'Fork 6'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    If there was a way in, there must be a way out, you tell yourself, but the pit in your stomach is telling you differently. Somewhere within you are trying so desperately to ignore the sneaking slithering voice whispering \"There's no way out\"."
    east = f5
    west = d5
    south = f7
;

f7: OutdoorRoom 'Fork 7'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    The corn sounds like voices, and you find yourself whispering nonsense just to hear a human voice."
    south = d6
    north = f6
    west = f8
;

f8: OutdoorRoom 'Fork 8'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You walk aimlessly now just wanting to get away."
    east = f7
    north = f12
    south = f9
;

f9: OutdoorRoom 'Fork 9'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You continue forward, or backwards maybe sideways or just a circle. There is no up or down anymore only corn, and rustling and darkness."
    north = f8
    west = d8
    east = f10
;

f10: OutdoorRoom 'Fork 10'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You're beginning to lose yourself in the corn. Have you already been this way? There’s no longer a way to tell.."
    west = f9
    north = f3
    south = f3
;

f11: OutdoorRoom 'Fork 11'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    Every stalk looks like the next, every turn the same. Still the rustling pushes you on. Sometimes you think that there is a voice speaking to you, pointing you along your choices. Other times you hear low growls from where the rustling is loudest."
    north = f10
    east = f12
    west = f13
;

f12: OutdoorRoom 'Fork 12'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    A stiff breeze brings up goosebumps on your cold skin. You rub your arms, trying to return feeling to your deadened senses. The corn ripples in the breeze, and you stand before your choice in a sea of lonliness."
    west = f11
    east = f15
    south = f8
;

f13: OutdoorRoom 'Fork 13'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    The hollow rustling has become as steady as the beat of your heart. You are unsure if it is even an indication of a creature, or just the wind."
    east = f11
    south = f14
    north = d8
;

f14: OutdoorRoom 'Fork 14"'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You stare into the night sky, alive but distant, as its cold light illuminates your insignificant plight."
    north = f13
    west = d9
    south = d10
;

f15: OutdoorRoom 'Fork 15'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    Around every bend you begin to think that surely the sun will rise, surely the dawn will reach you and pull you from this nightmare."
    west = f12
    north = d11
    south = f16
;

f16: OutdoorRoom 'Fork 16'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    Some part of you is in a haze. The blankness of your mind is matched only by the numbness of your extremities. You continue on aimlessly."
    north = f15
    south = f17
    east = d12
;

f17: OutdoorRoom 'Fork 17'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You look ahead of you and glimpse back. Your eyes see the shadows that cross the path behind you. Your ears hear the noises and know it is not just the wind. Your mind knows that your time is short."
    north = f16
    east = f19
    west = f18
;

f18: OutdoorRoom 'Fork 18'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You cannot recognize your own voice. Sourceless wavering croaks split the hostile air, unfamiliar,  but you know they can only come from you. There is nothing else."
    east = f17
    north = d13
    south = d14
;

f19: OutdoorRoom 'Fork 19'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You crawl for a while. Walking seems like too much."
    west = f17
    east = d15
    north = f20
;

f20: OutdoorRoom 'Fork 20'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You scream in frustration. You scream in fear. You scream until your throat is raw and you’re sure no one can hear you."
    south = f19
    east = f21
    north = f28
;

f21: OutdoorRoom 'Fork 21'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You try to think of how you got here, but know nothing. You pause and close your eyes but can only maintain it for a second until the darkness behind your eyelids frightens you even more than the dark sky above you."
    south = f5
    west = f20
    east = f22
;

f22: OutdoorRoom 'Fork 22'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    It's hunting you. It's behind you, then before you, then all around. You hear it in every rattling breath you squeeze out through your cold lungs."
    west = f21
    south = d16
    east = f23
;

f23: OutdoorRoom 'Fork 23'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    The sound gets louder and you start to run. Blindly you turn until you know you couldn't find your way back, that is if you have gotten anywhere at all."
    west = f22
    east = d17
    north = f24
;

f24: OutdoorRoom 'Fork 24'
    "<IMG SRC='assets/images/3turn.png' WIDTH=384 HEIGHT=216>\n
    There are footprints in front of you. You sigh with relief, thinking that this confirms the presence of another person. Unless they are your own and you've just gone this way before."
    south = f23
    north = f5
    east = f25
    west = f27
;

f25: OutdoorRoom 'Fork 25'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You start to run, the pounding of your feet louder than the rustling you know is following you. Your vision is blurring as the wind brings tears to your eyes."
    west = f24
    east = f26
    north = d17
;

f26: OutdoorRoom 'Fork 26'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    Exhausted you collapse to the ground. You look up at the swaying corn stalks and see the shadows they cast. You lay still hoping that the light will come to you. It doesn't. "
    west = f26
    north = d18
    south = d19
;

f27: OutdoorRoom 'Fork 27'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    Step forward. Step again. Never cease."
    east = f24
    west = f28
    south = f29
;

f28: OutdoorRoom 'Fork 28'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    You are not sure how long you have been walking. Your feet are tired, and for all your scrubbing, still encrusted in blood. You trudge forward, as the growling gets louder."
    south = f20
    east = f27
    west = f29
;

f29: OutdoorRoom 'Fork 29'
    "<IMG SRC='assets/images/2turn.png' WIDTH=384 HEIGHT=216>\n
    Same. Same. Same. Neverending. Inescapable. You turn again, you continue straight."
    north = f27
    east = f28
    south = f30
;

f30: OutdoorRoom 'Exit'
    "<IMG SRC='assets/images/exit.png' WIDTH=384 HEIGHT=216>\n
    The exit."
    north = f30
    roomAfterAction()
    {
        "Could this be it? Are you finished, are you out?";
        finishGameMsg(ftVictory, [finishOptionUndo]);
    }
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

d5: DeadEnd 'Deadend'
    east = f6
;

d6: DeadEnd 'Deadend'
    north = f7
;

d7: DeadEnd 'DeadEnd'
    south= f8
;

d8: DeadEnd 'Deadend'
    south = f13
;

d9: DeadEnd 'Deadend'
    east = f14
;

d10: DeadEnd 'Deadend'
    north = f14
;

d11: DeadEnd 'Deadend'
    south = f15
;

d12: DeadEnd 'Deadend'
    west = f16
;

d13: DeadEnd 'Deadend'
    south = f18
;

d14: DeadEnd 'Deadend'
    north = f18
;

d15: DeadEnd 'Deadend'
    west = f19
;

d16: DeadEnd 'Deadend'
    north = f22
;

d17: DeadEnd 'Deadend'
    south = f25
;

d18: DeadEnd 'Deadend'
    south = f26
;

d19: DeadEnd 'Deadend'
    north = f26
;
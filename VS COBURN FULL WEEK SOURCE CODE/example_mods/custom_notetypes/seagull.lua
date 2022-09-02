local white = '0xFFFFFFFF';

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note

			if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'seagull' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'DODGENOTE_ASSETS'); --Change texture

			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.023'); --Default value is: 0.023, health gained on hit

			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.3'); --Default value is: 0.0475, health lost on miss

			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);


			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
				
			end
		end
	
	--debugPrint('Script started!')
end


-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'seagull' then
		-- put something here if you want

			characterPlayAnim('boyfriend', 'dodge', true)
   			setProperty('boyfriend.specialAnim', true)

			characterPlayAnim('dad', 'happy', true)
  		 	setProperty('dad.specialAnim', true)

			characterPlayAnim('gf', 'cheer', true)
  			setProperty('gf.specialAnim', true)

	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'seagull' then
		-- put something here if you want
	
		if flashingLights then

				cameraFlash('other', white, 1, false)

		end

			makeLuaSprite('poop','poop', 460, -20)
			setObjectCamera('poop', 'other')
			scaleObject('poop', 1.5, 1.5)
			addLuaSprite('poop', true)

			cameraShake(game, 0.005, 1)

			runTimer('timer', 1, 1)

			playSound('seagull', '1')

			characterPlayAnim('boyfriend', 'hurt', true)
   			setProperty('boyfriend.specialAnim', true)
				
			characterPlayAnim('dad', 'scared', true)
  		 	setProperty('dad.specialAnim', true)

			characterPlayAnim('gf', 'amused', true)
  			setProperty('gf.specialAnim', true)

	end
end


    function onTimerCompleted(tag, loops, loopsleft)

		if tag == 'timer' then

		doTweenAlpha('shadowRealm', 'poop', 0, 1, 'linear')

	end
end

	function onTweenCompleted(tag)
	
		if tag == 'shadowRealm' then 

		removeLuaSprite('poop', true)
		
	end
end
	
--i fucking hate my life
--also you could steal the code if you want
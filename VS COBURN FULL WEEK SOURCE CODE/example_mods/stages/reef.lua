function onCreate()

	makeLuaSprite('bg water','bg water', -1312.9, -743.95)
	setScrollFactor('bg water', 0.5, 0.5)

	makeLuaSprite('mid coral','mid coral', -1459.55, -468.5)
	setScrollFactor('mid coral', 0.8, 0.8)

-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
addCharacterToList('coburn-dead', 'boyfriend')

		setPropertyFromClass('GameOverSubstate', 'characterName', 'coburn-dead')

	makeLuaSprite('whale','whale', 3000, -500)
	setBlendMode('whale','multiply')
	setScrollFactor('whale', 0.6, 0.6)

	makeLuaSprite('shade sand','shade sand', -1287.75, 813.7)
	setBlendMode('shade sand','add')
	setScrollFactor('shade sand', 0.8, 0.8)

	makeLuaSprite('fg coral','fg coral', -1566.8, -835.75)
	setScrollFactor('fg coral', 0.9, 0.9)
	
	makeLuaSprite('fg coral right','fg coral', 1720.55, -841.1)
	setProperty('fg coral right.flipX', true);
	setScrollFactor('fg coral right', 0.9, 0.9)

	makeLuaSprite('filter','filter', -1928.25, -1745.9)
	setObjectCamera('filter', 'game')

	makeLuaSprite('light','light', -859.85, -1110.55)
	setBlendMode('light','add')
	setProperty('light.alpha', 0.10)
	setObjectCamera('light', 'game')

end

	addLuaSprite('bg water', false)

	addLuaSprite('whale', false)

	addLuaSprite('mid coral', false)

	addLuaSprite('shade sand', false)

	addLuaSprite('fg coral', true)	

	addLuaSprite('fg coral right', true)

	addLuaSprite('filter', true)

	addLuaSprite('light', true)

end


function onSongStart()
	
	doTweenX('whaletween', 'whale', -3000, 9, linear)
	
	setProperty('whale.flipX', false)

	runTimer('loop', 9, 1)

end


function onTimerCompleted(tag)
	
if tag == 'loop' then
	
	doTweenX('whaletween2', 'whale', 3000, 9, linear)
	
	setProperty('whale.flipX', true)

	runTimer('loop2', 9, 1)

elseif tag == 'loop2' then

	doTweenX('whaletween', 'whale', -3000, 9, linear)
		
	setProperty('whale.flipX', false)

	runTimer('loop', 9, 1)

	end
end

--omg it worked 
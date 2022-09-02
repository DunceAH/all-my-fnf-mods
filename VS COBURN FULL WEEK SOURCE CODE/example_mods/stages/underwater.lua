local black= '000000';

function onSongStart()
	if flashingLights then

	cameraFlash(other, black, 3, false)
	end
end

function onCreate()
	--credit to BigBombKitty's code for the switch stage event they the real one

setProperty("skipCountdown", true)
addCharacterToList('coburn-cool', 'boyfriend')
addCharacterToList('bf-cool', 'dad')
addCharacterToList('gf-cool', 'gf')

	makeAnimatedLuaSprite('fish','fish', -290.85, -876.2)
	addAnimationByPrefix('fish', 'dance','fish', 24, true)
	objectPlayAnimation('fish', 'dance', true)
	setScrollFactor('fish', 0.9, 0.9)
	scaleObject('fish', 1.5, 1.5);

	if not lowQuality then

		addCharacterToList('coburn-dead', 'boyfriend')

		setPropertyFromClass('GameOverSubstate', 'characterName', 'coburn-dead')

		makeLuaSprite('filter','filter', -2056.65, -1407.75)
		setProperty('filter.alpha',0.90)
		setObjectCamera('filter', 'game')

		makeLuaSprite('extravignette','extravignette',-1685.85
, -1555.25)
		setProperty('extravignette.alpha',0.80)
		makeLuaSprite('light','light', -1100, -1700)
		setBlendMode('light','add')
		setProperty('light.alpha',0.20)
		setObjectCamera('light', 'game')

end
	
	addLuaSprite('fish', false)

	addLuaSprite('filter', true)

	addLuaSprite('light', true)

	addLuaSprite('extravignette', true)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'blank' then

	if flashingLights then
			cameraShake(other, 0.005, 1)
			cameraFlash(game, black, 1, false)
		end
			setProperty('fish.visible', false)
			setProperty('filter.visible', false)
			setProperty('light.visible', false)
			setProperty('extravignette.visible', false)
			triggerEvent('Change Character', 0, 'coburn-cool')
			triggerEvent('Change Character', 1, 'bf-cool')
			triggerEvent('Change Character', 2, 'gf-cool')

		end

		if value1 == 'normal' then
	if flashingLights then
			cameraFlash(game, black, 1, false)
		end
			setProperty('fish.visible', true)
			setProperty('filter.visible', true)
			setProperty('light.visible', true)
			setProperty('extravignette.visible', true)
			triggerEvent('Change Character', 0, 'coburn-underwater')
			triggerEvent('Change Character', 1, 'bf-underwater')
			triggerEvent('Change Character', 2, 'gf-underwater')
		end
	end
end
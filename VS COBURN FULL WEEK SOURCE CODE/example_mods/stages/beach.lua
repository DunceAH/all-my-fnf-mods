function onCreate()

precacheSound('boo')
precacheSound('seagull')
precacheSound('bgSeagull')
precacheSound('bgWave')
precacheImage('poop')

	makeLuaSprite('sky','sky', -478.25, -677.2)
	setScrollFactor('sky', 0.6, 0.6)

	makeLuaSprite('fg beach','fg beach', -529.25, 33.5)
	setScrollFactor('fg beach', 1, 1)

-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	makeLuaSprite('hills','hills', -462.15, 7.1)
	setScrollFactor('hills', 0.8, 0.8)

	makeLuaSprite('beach water','beach water', -488, 201.35)
	setLuaSpriteScrollFactor('beach water', 0.9, 0.9)

	makeAnimatedLuaSprite('peeps','peeps', -186.1, -169)
	addAnimationByPrefix('peeps', 'dance','peeps', 24, true)
	objectPlayAnimation('peeps', 'dance', false)
	setLuaSpriteScrollFactor('peeps', 1, 1)

	makeAnimatedLuaSprite('fg peeps','fg peeps', -427, 458.5)
	addAnimationByPrefix('fg peeps', 'dance','fg peeps', 24, true)
	objectPlayAnimation('fg peeps', 'dance', false)
	setLuaSpriteScrollFactor('fg peeps', 1.2, 1.2)

end

	addLuaSprite('sky', false)
	addLuaSprite('hills', false)
	addLuaSprite('beach water', false)
	addLuaSprite('fg beach', false)
	addLuaSprite('peeps', false)
	addLuaSprite('fg peeps', true)

close(true)

end
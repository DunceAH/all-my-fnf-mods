function onCreate()

precacheSound('seagull')
precacheSound('bgSeagull')
precacheSound('bgWave')
precacheImage('poop')

	makeLuaSprite('ocean bg','ocean bg', -1277.45, -626.3);
	setLuaSpriteScrollFactor('ocean bg', 0.4, 0.4);

	makeLuaSprite('farHills','farHills', -665.9, -15.55);
	setLuaSpriteScrollFactor('farHills', 0.6, 0.6);

	makeLuaSprite('Lrock','rock', -1325.2, -109.65);
	setLuaSpriteScrollFactor('Lrock', 0.7, 0.7);

	makeLuaSprite('Rrock','rock', 1425.75, -134.6);
	setLuaSpriteScrollFactor('Rrock', 0.7, 0.7)
	setProperty('Rrock.flipX', true);

	makeLuaSprite('sandss','sandss', -1469.5, -192.8);
	setLuaSpriteScrollFactor('sandss', 0.8, 0.8);

	makeLuaSprite('water','water', -1478.8, 306.6);
	setLuaSpriteScrollFactor('water', 1, 1);

	makeLuaSprite('fg water','fg water', -1536.55, 549.4);
	setLuaSpriteScrollFactor('fg water', 1.5, 1.5);

-- sprites that only load if Low Quality is turned off
	if not lowQuality then
  
	makeAnimatedLuaSprite('gwen','gwen', -555.7, 292.35);
	addAnimationByPrefix('gwen', 'dance','gwen', 24, true);
	objectPlayAnimation('gwen', 'dance', true);
	setLuaSpriteScrollFactor('gwen', 1, 1);

	makeAnimatedLuaSprite('xochilt','xochilt', 1043.55, 420.6);
	addAnimationByPrefix('xochilt', 'dance','xochilt', 24, true);
	objectPlayAnimation('xochilt', 'dance', true);
	setLuaSpriteScrollFactor('xochilt', 1, 1);

	makeAnimatedLuaSprite('asidetabi','asidetabi', 1770.1, 219.05);
	addAnimationByPrefix('asidetabi', 'dance','asidetabi', 24, true);
	objectPlayAnimation('asidetabi', 'dance', true);
	setLuaSpriteScrollFactor('asidetabi', 1, 1);

end

	addLuaSprite('ocean bg', false)
	addLuaSprite('farHills', false)
	addLuaSprite('Lrock', false)
	addLuaSprite('Rrock', false)
	addLuaSprite('sandss', false)
	addLuaSprite('water', false)
	addLuaSprite('asidetabi', false)
	addLuaSprite('gwen', false)
	addLuaSprite('xochilt', false)
	addLuaSprite('fg water', true)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage

end
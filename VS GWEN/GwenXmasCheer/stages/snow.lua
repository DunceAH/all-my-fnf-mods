function onCreate()
	--credit to BigBombKitty's code they are cool and badass omg oksfeksef

	makeAnimatedLuaSprite('HAPPYsnow','HAPPYsnow', -600.1, -414.1);
	addAnimationByPrefix('HAPPYsnow', 'dance','happy-snow instance 1', 24, true);
	objectPlayAnimation('HAPPYsnow', 'dance', false);
	setLuaSpriteScrollFactor('HAPPYsnow', 0.9, 0.9);
	addLuaSprite('HAPPYsnow', false);

	makeAnimatedLuaSprite('EVILsnow','EVILsnow', -639.5, -414.1);
	addAnimationByPrefix('EVILsnow', 'dance','happy-snow instance 1', 24, true);
	objectPlayAnimation('EVILsnow', 'dance', false);
	setLuaSpriteScrollFactor('EVILsnow', 0.9, 0.9);
	addLuaSprite('EVILsnow', false);

	setProperty('EVILsnow.visible', false)

	makeAnimatedLuaSprite('TEMPsnow','TEMPsnow', -608.5, -414.1);
	addAnimationByPrefix('TEMPsnow', 'dance','happy-snow instance 1', 24, true);
	objectPlayAnimation('TEMPsnow', 'dance', false);
	setLuaSpriteScrollFactor('TEMPsnow', 0.9, 0.9);
	addLuaSprite('TEMPsnow', false);

	setProperty('TEMPsnow.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'evil' then
			setProperty('HAPPYsnow.visible', false);
			setProperty('EVILsnow.visible', true);
			setProperty('TEMPsnow.visible', false);
		end
		if value1 == 'happy' then
			setProperty('HAPPYsnow.visible', true);
			setProperty('EVILsnow.visible', false);
			setProperty('TEMPsnow.visible', false);
		end
		if value1 == 'temp' then
			setProperty('HAPPYsnow.visible', false);
			setProperty('EVILsnow.visible', false);
			setProperty('TEMPsnow.visible', true);
		end
	end
end

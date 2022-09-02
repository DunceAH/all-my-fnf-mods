function onEvent(name,value1,value2)

	if name == 'bgSound' then 
		
		if value1 == 'wave' then

	playSound('bgWave', '0.05')


end 

		if value2 == 'seagull' then

	playSound('bgSeagull', '0.05')

		end
	end
end

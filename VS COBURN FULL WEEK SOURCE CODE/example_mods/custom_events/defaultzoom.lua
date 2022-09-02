function onEvent(name,value1,value2)
	if name == 'defaultzoom' then 

		if value2 == '' then

           setProperty('defaultCamZoom', value1)
		else
            doTweenZoom('zoomies','camGame',tonumber(value1),tonumber(value2),'linear')

		end
	end
end

function onTweenCompleted(name)

if name == 'zoomies' then


      	 setProperty("defaultCamZoom",getProperty('camGame.zoom')) 

end
end


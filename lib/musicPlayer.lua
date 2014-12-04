local function reserveChannels(list)
    audio.reserveChannels (chan)
end

local function setVolume(vol, opts)
    audio.fade({ channel = opts.channel or 0, time=opts.time or 0, volume = vol or 0 })
    if opts and opts.onComplete then timer.performWithDelay( opts.time or 0, opts.onComplete ) end
end

local function getAvailableChannel(list, current)
	
end

local player

function player.new(opts)
	local playing = false
	local current = nil
	local channel = 0
	local defaults = {
		volume = 1.0,
		backgroundVolume = 0.5,
		crossfadeTime = 300,
		channels = {1,2},
	}
	local que = {}

	local class

	function class:isPlaying()
		return playing
	end

	function class:mute()
		setVolume(0, {
			channel = 1
			})
	end

	function class:unmute()
		setVolume(1, {
			channel = 1
			})
	end

	function class:background()
		setVolume(0, {
			channel = 1
			})
	end

	function class:foreground()
	end

	function class:enque(res)
		insert( que, value )
	end

	function class:clear()
		que = {}
	end

	function class:previous()
		-- body
	end

	function class:next()
		-- body
	end

	function class:play(res)
		-- body
	end

	function class:stop()
		-- body
	end

	return class
end

return player
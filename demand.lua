_addon.name = 'Demand'
_addon.author = 'Aessk'
_addon.version = '1.5'
_addon.commands = {'Demand', 'dm'}
_addon.language = 'english'

require 'luau'
require 'actions'
require 'pack'
require 'chat'
--require('demands')
files = require 'files'

defaults = T{}
defaults.mode = 'whitelist'
defaults.whitelist = S{}
defaults.blacklist = S{}

-- Whitelist / Blacklist aliases
aliases = T{
    wlist        = 'whitelist',
    white        = 'whitelist', 	
    whitelist    = 'whitelist',
    blist        = 'blacklist',
    black        = 'blacklist',
    blacklist    = 'blacklist',
}

-- Add / Remove aliases
addstrs = S{'a', 'add', '+'}
rmstrs = S{'r', 'rm', 'remove', '-'}

modes = S{'whitelist', 'blacklist'}

message = S{}

if windower.ffxi.get_player() then 
	self = windower.ffxi.get_player()

	custom_demands_file = files.new('demands_'..self.main_job..'.lua')
	demands_template_file = files.new('demands_template.lua')

if custom_demands_file:exists() then
	windower.add_to_chat(2,'Demand: Loading File: demands_'..self.main_job..'.lua')
else
	template_content = demands_template_file.read('demands_template.lua')
	windower.add_to_chat(2,'Demand: New job detected, Creating file: demands_'..self.main_job..'.lua')
	custom_demands = {}
	custom_demands_file:write(template_content)
end

	custom_demands = require('demands_'..self.main_job)

end


selfabilities = getSelfabilities()
singleabilities = getSingleabilities()
enemyabilities = getEnemyabilities()
selfspells = getSelfspells()
singlespells = getSinglespells()
enemyspells = getEnemyspells()
partycommands = getPartycommands()

settings = config.load(defaults)

-- Checking if player is on the list and what they said.
windower.register_event('chat message', function(message, player)
        if settings.mode == 'blacklist' then
            if settings.blacklist:contains(player) then
                return
            else
                try_acting(message, player)
            end
        elseif settings.mode == 'whitelist' then
            if settings.whitelist:contains(player) then
                try_acting(message, player)
            end
        end
end)

-- Doing what was demanded.
function try_acting(message, player)
	lowermessage = string.lower(message)
	reply =  lookupSpell(selfabilities, lowermessage )
	if reply ~= nil then
			windower.send_command('input /ja "'..reply..'" <me>')
			log('Attempting '..reply..' on myself')
	        return
	end  
    reply =  lookupSpell(singleabilities, lowermessage )
	if reply ~= nil then
			windower.send_command('input /ja "'..reply..'" '..player)
			log('Attempting '..reply..' on '..player)
	        return
	end
	reply =  lookupSpell(enemyabilities, lowermessage )
	if reply ~= nil then
			windower.send_command('input /ja "'..reply..'" <t>')
			log('Attempting '..reply..' on <t>')
	        return
	end
	reply =  lookupSpell(selfspells, lowermessage )
	if reply ~= nil then
			windower.send_command('input /ma "'..reply..'" <me>')
			log('Attempting '..reply..' on myself')
	        return
	end
	reply =  lookupSpell(singlespells, lowermessage )
	if reply ~= nil then
			windower.send_command('input /ma "'..reply..'" '..player)
			log('Attemping '..reply..' on '..player)
	        return
	end
	reply =  lookupSpell(enemyspells, lowermessage )
	if reply ~= nil then
			windower.send_command('input /ma "'..reply..'" <t>')
			log('Attemping '..reply..' on <t>')
	        return
	end
	reply =  lookupSpell(partycommands, lowermessage )
	if reply ~= nil then
			windower.send_command('input /pcmd leader '..player)
			log('Attempting to pass lead to '..player)
	        return
	end
	if lowermessage == 'assistme' then
			windower.send_command('input /assist '..player)
			log('Attempting to assist '..player)
	        return
	end
	if lowermessage == 'attackit' then
			windower.send_command('input /attack')
			log('Attempting to attack target')
	        return
	end
	if lowermessage == 'shootit' then
			windower.send_command('input /ra <t>')
			log('Attempting to shoot target')
	        return
	end
	if lowermessage == 'alead' then
			windower.send_command('input /acmd leader '..player)
			log('Attempting to pass lead to '..player)
	        return
	end
	if lowermessage == 'follow' then
			windower.send_command('input /follow '..player)
			log('Attempting to follow '..player)
	        return
	end
  	
end 


-- Adds names to lists
function add_item(mode, ...)
    local names = S{...}
    local doubles = names * settings[mode]
    if not doubles:empty() then
        notice('User':plural(doubles)..' '..doubles:format()..' already on '..aliases[mode]..'.')
    end
    local new = names - settings[mode]
    if not new:empty() then
        settings[mode] = settings[mode] + new
        log('Added '..new:format()..' to the '..aliases[mode]..'.')
    end
end

-- Removes names from lists
function remove_item(mode, ...)
    local names = S{...}
    local dummy = names - settings[mode]
    if not dummy:empty() then
        notice('User':plural(dummy)..' '..dummy:format()..' not found on '..aliases[mode]..'.')
    end
    local item_to_remove = names * settings[mode]
    if not item_to_remove:empty() then
        settings[mode] = settings[mode] - item_to_remove
        log('Removed '..item_to_remove:format()..' from the '..aliases[mode]..'.')
    end
end


windower.register_event('addon command', function(command, ...)
    command = command and command:lower() or 'status'
    local args = L{...}
    -- Changes whitelist/blacklist mode
    if command == 'mode' then
        local mode = args[1] or 'status'
        if aliases:keyset():contains(mode) then
            settings.mode = aliases[mode]
            log('Mode switched to '..settings.mode..'.')
        elseif mode == 'status' then
            log('Currently in '..settings.mode..' mode.')
        else
            error('Invalid mode:', args[1])
            return
        end
    
    elseif aliases:keyset():contains(command) then
        mode = aliases[command]
        names = args:slice(2):map(string.ucfirst..string.lower)
        if args:empty() then
            log(mode:ucfirst()..':', settings[mode]:format('csv'))
        else
            if addstrs:contains(args[1]) then
                add_item(mode, names:unpack())
            elseif rmstrs:contains(args[1]) then
                remove_item(mode, names:unpack())
            else
                notice('Invalid operator specified. Specify add or remove.')
            end
        end
        
    -- Current settings status
    elseif command == 'status' then
        log('Mode:', settings.mode)
        log('Whitelist:', settings.whitelist:empty() and '(empty)' or settings.whitelist:format('csv'))
        log('Blacklist:', settings.blacklist:empty() and '(empty)' or settings.blacklist:format('csv'))
    
    else
        warning('Unkown command \''..command..'\', ignored.')

    end

    config.save(settings)
end)

windower.register_event('job change', function()
	windower.send_command('lua r demand')    
end)

windower.register_event('login', function()
	windower.send_command('lua r demand')    
end)
function tableValuelookup(tbl, element)
  for _, value in pairs(tbl) do
    if value == element then
      return value
    end
  end
  return nil
end

function lookupSpell(tbl, spell)
	foundSpell =  tbl[spell] 
	 
	if foundSpell == nil then 
		foundSpell = tableValuelookup(tbl,spell) 
	end
    	
    return foundSpell
end


--abilities that are self target /ja benediction <me>
function getSelfabilities()
	selfabilities = {}
	
	--selfabilities["alias"] = "full name"
	
	return selfabilities
end

--abilities that are single target /ja devotion john
function getSingleabilities()
	singleabilities = {}

	--singleabilities["alias"] = "full name"
	
	return singleabilities
end

--abilities that are enemy target /ja provoke sheep
function getEnemyabilities()
	enemyabilities = {}
	
	--enemyabilities["alias"] = "full name"
	
	return enemyabilities
end 

--spells that are self target /ma protectra <me>
function getSelfspells()
	selfspells = {}

	--selfspells["alias"] = "full name"

	return selfspells
end

--spells that are single target /ma cure john
function getSinglespells()
	singlespells = {}

	--singlespells["alias"] = "full name"

	return singlespells
end 

--spells that are enemy target /ma dia sheep
function getEnemyspells()
	enemyspells = {}

	--enemyspells["alias"] = "full name"

	return enemyspells
end

--weaponskills to use on enemy target /ws "savage blade" sheep
function getWeaponabilities()
	weaponabilities = {}

	--weaponabilities["alias"] = "full name"

	return weaponabilities
end

--custom commands for scripts or input that don't target the player asking.
function getSelfcustomcommands()
	selfcustomcommands = {}

	--selfcustomcommands["alias"] = "full name"
	selfcustomcommands["attackit"] = "input /attack"
	selfcustomcommands["shootit"] = "input /ra <t>"

	return selfcustomcommands
end

--custom commands for inputs that target the player asking.
function getSinglecustomcommands()
	singlecustomcommands = {}

	--singlecustomcommands["alias"] = "full name"
	singlecustomcommands["follow"] = "input /follow"
	singlecustomcommands["assistme"] = "input /assist"
	singlecustomcommands["inviteme"] = "input /pcmd add"
	singlecustomcommands["leader"] = "input /pcmd leader"
	singlecustomcommands["plead"] = "input /pcmd leader"
	singlecustomcommands["allyme"] = "input /acmd add"
	singlecustomcommands["alead"] = "input /acmd leader"

	return singlecustomcommands
end
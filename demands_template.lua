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

--general party commands /pcmd leader john
function getPartycommands()
	partycommands = {}

	partycommands["leader"] = "leader"
	partycommands["plead"] = "leader"
	return partycommands
end 
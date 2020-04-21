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
	
	-- else 
		-- log('Found spell as key: ' .. spell)   
	end
    	
    return foundSpell
end

function getSelfabilities()
	selfabilities = {}

	selfabilities["bene"] = "benediction"
	selfabilities["divs"] = "divine seal"
	selfabilities["affs"] = "afflatus solace"
	selfabilities["affm"] = "afflatus misery"
	selfabilities["divc"] = "divine caress"
	selfabilities["Sacro"] = "sacrosanctity"
	selfabilities["asylum"] = "asylum"
	selfabilities["larts"] = "light arts"
	selfabilities["darts"] = "dark arts"
	selfabilities["subl"] = "sublimation"
	selfabilities["penury"] = "penury"
	selfabilities["addw"] = "addendum: white"
	selfabilities["cele"] = "celerity"
	selfabilities["acce"] = "accession"
	selfabilities["pars"] = "parsimony"
	selfabilities["alac"] = "alacrity"
	selfabilities["addb"] = "addendum: black"
	selfabilities["mani"] = "manifestation"
	selfabilities["convert"] = "convert"
	
	return selfabilities
end 

function getSingleabilities()
	singleabilities = {}

	singleabilities["devo"] = "devotion"
	
	return singleabilities
end 

--abilities that are enemy target /ja provoke sheep
function getEnemyabilities()
	enemyabilities = {}
	
	--enemyabilities["alias"] = "full name"

	
	return enemyabilities
end

function getSelfspells()
	selfspells = {}

	selfspells["aqv"] = "aquaveil"
	selfspells["blink"] = "blink"
	selfspells["stoneskin"] = "stoneskin"
	selfspells["phx"] = "phalanx"
	selfspells["aus"] = "auspice"
	selfspells["barbliz"] = "barblizzara"
	selfspells["barfire"] = "barfira"
	selfspells["barstone"] = "barstonra"
	selfspells["barth"] = "barthundra"
	selfspells["barair"] = "baraera"
	selfspells["barwater"] = "barwatera"
	selfspells["baramn"] = "baramnesra"
	selfspells["barblind"] = "barblindra"
	selfspells["barpara"] = "barparalyzra"
	selfspells["barpetra"] = "barpetra"
	selfspells["barpoison"] = "barpoisonra"
	selfspells["barsil"] = "barsilencera"
	selfspells["barsleep"] = "barsleepra"
	selfspells["barvir"] = "barvira"
	selfspells["bagi"] = "boost-agi"
	selfspells["bchr"] = "boost-chr"
	selfspells["bdex"] = "boost-dex"
	selfspells["bint"] = "boost-int"
	selfspells["bmnd"] = "boost-mnd"
	selfspells["bstr"] = "boost-str"
	selfspells["bvit"] = "boost-vit"
	selfspells["ca1"] = "cura"
	selfspells["ca2"] = "cura ii"
	selfspells["ca3"] = "cura iii"
	selfspells["asuna"] = "esuna"
	selfspells["pra1"] = "protectra"
	selfspells["pra2"] = "protectra ii"
	selfspells["pra3"] = "protectra iii"
	selfspells["pra4"] = "protectra iv"
	selfspells["pra5"] = "protectra v"
	selfspells["sra1"] = "shellra"
	selfspells["sra2"] = "shellra ii"
	selfspells["sra3"] = "shellra iii"
	selfspells["sra4"] = "shellra iv"
	selfspells["sra5"] = "shellra v"
	selfspells["rr1"] = "reraise"
	selfspells["rr2"] = "reraise ii"
	selfspells["rr3"] = "reraise iii"
	selfspells["rr4"] = "reraise iv"
	-- selfspells["rjugner"] = "recall-Jugner"
	-- selfspells["rmeriph"] = "recall-meriph"
	-- selfspells["rpashh"] = "recall-pashh"
	-- selfspells["taltep"] = "teleport-altep"
	-- selfspells["tdem"] = "teleport-dem"
	-- selfspells["tholla"] = "teleport-holla"
	-- selfspells["tmea"] = "teleport-mea"
	-- selfspells["tvahzl"] = "teleport-vahzl"
	-- selfspells["tyhoat"] = "teleport-yhoat"
	
	return selfspells
end

function getSinglespells()
	singlespells = {}

	singlespells["cg1"] = "curaga"
	singlespells["zzz"] = "curaga"
	singlespells["cg2"] = "curaga ii"
	singlespells["cg3"] = "curaga iii"
	singlespells["cg4"] = "curaga iv"
	singlespells["cg5"] = "curaga v"
	singlespells["c1"] = "cure"
	singlespells["c2"] = "cure ii"
	singlespells["c3"] = "cure iii"
	singlespells["c4"] = "cure iv"
	singlespells["c5"] = "cure v"
	singlespells["c6"] = "cure vi"
	singlespells["fl1"] = "flurry"
	singlespells["fl2"] = "flurry ii"
	singlespells["haste"] = "haste"
	singlespells["haste2"] = "haste ii"
	singlespells["snk"] = "sneak"
	singlespells["invis"] = "invisible"
	singlespells["deo"] = "deodorize"
	singlespells["phx2"] = "phalanx ii"
	singlespells["p1"] = "protect"
	singlespells["p2"] = "protect ii"
	singlespells["p3"] = "protect iii"
	singlespells["p4"] = "protect iv"
	singlespells["p5"] = "protect v"
	singlespells["s1"] = "shell"
	singlespells["s2"] = "shell ii"
	singlespells["s3"] = "shell iii"
	singlespells["s4"] = "shell iv"
	singlespells["s5"] = "shell v"
	singlespells["r1"] = "raise"
	singlespells["r2"] = "raise ii"
	singlespells["r3"] = "raise iii"
	singlespells["r4"] = "arise"
	singlespells["ref1"] = "refresh"
	singlespells["ref2"] = "refresh ii"
	singlespells["ref3"] = "refresh iii"
	singlespells["rg1"] = "regen"
	singlespells["rg2"] = "regen ii"
	singlespells["rg3"] = "regen iii"
	singlespells["rg4"] = "regen iv"
	singlespells["sac"] = "sacrifice"
	singlespells["erase"] = "erase"
	singlespells["slowed"] = "erase"
	singlespells["bound"] = "erase"
	singlespells["blind"] = "blindna"
	singlespells["blinded"] = "blindna"
	singlespells["para"] = "paralyna"
	singlespells["paralyzed"] = "paralyna"
	singlespells["poison"] = "poisona"
	singlespells["poisoned"] = "poisona"
	singlespells["silena"] = "silena"
	singlespells["silenced"] = "silena"
	singlespells["doom"] = "cursna"
	singlespells["doomed"] = "cursna"
	singlespells["curse"] = "cursna"
	singlespells["cursed"] = "cursna"
	singlespells["stoned"] = "stona"
	singlespells["petra"] = "stona"
	singlespells["petrafied"] = "stona"
	singlespells["virus"] = "viruna"
	singlespells["lw"] = "aurorastorm"
	singlespells["astorm"] = "aurorastorm"
	singlespells["dw"] = "voidstorm"
	singlespells["vstorm"] = "voidstorm"
	singlespells["ww"] = "windstorm"
	singlespells["wstorm"] = "windstorm"
	singlespells["tw"] = "thunderstorm"
	singlespells["tstorm"] = "thunderstorm"
	singlespells["rw"] = "rainstorm"
	singlespells["rstorm"] = "rainstorm"
	singlespells["ew"] = "sandstorm"
	singlespells["sstorm"] = "sandstorm"
	singlespells["iw"] = "hailstorm"
	singlespells["hstorm"] = "hailstorm"
	singlespells["fw"] = "firestorm"
	singlespells["fstorm"] = "firestorm"
	--singlespells["fullcure"] = "full cure"
	
	return singlespells
end 

function getEnemyspells()
	enemyspells = {}

	enemyspells["addle"] = "addle"
	-- enemyspells["ban1"] = "banish"
	-- enemyspells["ban2"] = "banish ii"
	-- enemyspells["ban3"] = "banish iii"
	-- enemyspells["bang1"] = "banishga"
	-- enemyspells["bang2"] = "banishga ii"
	enemyspells["dia1"] = "dia"
	enemyspells["dia2"] = "dia ii"
	-- enemyspells["dga1"] = "diaga"
	-- enemyspells["flash"] = "flash"
	-- enemyspells["holy"] = "holy"
	-- enemyspells["holy2"] = "holy ii"
	enemyspells["paralyze"] = "paralyze"
	enemyspells["silence"] = "silence"
	enemyspells["slow"] = "slow"
	
	return enemyspells
end

--weaponskills to use on enemy target /ws "savage blade" sheep
function getWeaponabilities()
	weaponabilities = {}

	--weaponabilities["alias"] = "full name"
	weaponabilities["hstrike"] = "hexa strike"
	weaponabilities["bhalo"] = "black halo"
	weaponabilities["fnov"] = "flash nova"

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
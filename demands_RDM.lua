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
	selfabilities["chainspell"] = "chainspell"
	selfabilities["stymie"] = "stymie"
	selfabilities["convert"] = "convert"
	selfabilities["compo"] = "composure"
	selfabilities["sabo"] = "saboteur"
	selfabilities["spont"] = "spontaneity"
	selfabilities["divs"] = "divine seal"
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
	selfspells["aqv"] = "aquaveil"
	selfspells["blink"] = "blink"
	selfspells["stoneskin"] = "stoneskin"
	selfspells["phx"] = "phalanx"
	selfspells["barbliz"] = "barblizzard"
	selfspells["barfire"] = "barfire"
	selfspells["barstone"] = "barstone"
	selfspells["barth"] = "barthunder"
	selfspells["barair"] = "baraero"
	selfspells["barwater"] = "barwater"
	selfspells["baramn"] = "baramnesia"
	selfspells["barblind"] = "barblind"
	selfspells["barpara"] = "barparalyze"
	selfspells["barpetra"] = "barpetrify"
	selfspells["barpoison"] = "barpoison"
	selfspells["barsil"] = "barsilence"
	selfspells["barsleep"] = "barsleep"
	selfspells["barvir"] = "barvirus"
	selfspells["enaero"] = "enaero"
	selfspells["enthunder"] = "enthunder"
	selfspells["enstone"] = "enstone"
	selfspells["enblizzard"] = "enblizzard"
	selfspells["enfire"] = "enfire"
	selfspells["enwater"] = "enwater"
	selfspells["sspikes"] = "shock spikes"
	selfspells["ispikes"] = "ice spikes"
	selfspells["bspikes"] = "blaze spikes"
	selfspells["gagi"] = "gain-agi"
	selfspells["gchr"] = "gain-chr"
	selfspells["gdex"] = "gain-dex"
	selfspells["gint"] = "gain-int"
	selfspells["gmnd"] = "gain-mnd"
	selfspells["gstr"] = "gain-str"
	selfspells["gvit"] = "gain-vit"
	selfspells["ca1"] = "cura"
	selfspells["pra1"] = "protectra"
	selfspells["pra2"] = "protectra ii"
	selfspells["pra3"] = "protectra iii"
	selfspells["sra1"] = "shellra"
	selfspells["sra2"] = "shellra ii"
	selfspells["rr1"] = "reraise"
	selfspells["rr2"] = "reraise ii"

	return selfspells
end

--spells that are single target /ma cure john
function getSinglespells()
	singlespells = {}

	--singlespells["alias"] = "full name"
	singlespells["cg1"] = "curaga"
	singlespells["zzz"] = "curaga"
	singlespells["cg2"] = "curaga ii"
	singlespells["c1"] = "cure"
	singlespells["c2"] = "cure ii"
	singlespells["c3"] = "cure iii"
	singlespells["c4"] = "cure iv"
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
	singlespells["ref1"] = "refresh"
	singlespells["ref2"] = "refresh ii"
	singlespells["ref3"] = "refresh iii"
	singlespells["rg1"] = "regen"
	singlespells["rg2"] = "regen ii"
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

--spells that are enemy target /ma dia sheep
function getEnemyspells()
	enemyspells = {}

	--enemyspells["alias"] = "full name"
	enemyspells["break"] = "break"
	enemyspells["bind"] = "bind"
	enemyspells["dia1"] = "dia"
	enemyspells["dia2"] = "dia ii"
	enemyspells["dia3"] = "dia iii"
	enemyspells["dist1"] = "distract"
	enemyspells["dist2"] = "distract ii"
	enemyspells["dist3"] = "distract iii"
	enemyspells["addle1"] = "addle"
	enemyspells["addle2"] = "addle ii"
	enemyspells["fraz1"] = "frazzle"
	enemyspells["fraz2"] = "frazzle ii"
	enemyspells["fraz3"] = "frazzle iii"
	enemyspells["paral1"] = "paralyze"
	enemyspells["paral2"] = "paralyze ii"
	enemyspells["sil1"] = "silence"
	enemyspells["sil2"] = "silence ii"
	enemyspells["slow1"] = "slow"
	enemyspells["slow2"] = "slow ii"

	return enemyspells
end

--weaponskills to use on enemy target /ws "savage blade" sheep
function getWeaponabilities()
	weaponabilities = {}

	--weaponabilities["alias"] = "full name"
	weaponabilities["seriph"] = "sariph blade"
	weaponabilities["sblade"] = "savage blade"
	weaponabilities["cduc"] = "chant du cygne"

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
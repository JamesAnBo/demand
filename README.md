to add people to whitelist or blacklist type

	//dm wlist add <name>
	//dm blist add <name>

to remove type

	//dm wlist remove <name>
	//dm blist remove <name>

to change modes (default is whitelist mode) type

	//dm mode whitelist
	//dm mode blacklist

whitelist mode: only accepts commands from people on your whitelist

blacklist mode (NOT RECOMMENDED): accept commands from everybody except people on your blacklist

There will be a template file created when the user switches to a new job for the first time. It'll look like demands_WHM.lua or related job. I've created a WHM and RDM file already. Use them as a guide to creat other job files.

Some universal commands:

	assistme = will assist player (targets what the player is currently engaged to)
	attackit = will attack current target using /attack
	shootit = will ranged attack current target using /ra <t>
	leader or plead = passes party lead to player
	alead = passes ally lead to player
	follow = follows player

Other then the full spell name other WHM aliases are:

Self targeting abilities:

	bene = benediction
	asylum = asylum
	divs = divine seal
	divc = divine caress
	affs = afflatus solace
	affm = afflatus misery
	Sacro = sacrosanctity
	larts = light arts
	darts = dark arts
	addw = addendum: white
	addb = addendum: black
	subl = sublimation
	penury = penury
	cele = celerity
	acce = accession
	pars = parsimony
	alac = alacrity
	mani = manifestation
	convert = convert

Single targeting abilities (will be used on the player asking):

	devo = devotion

Self targeting spells:

	aqv = aquaveil
	blink = blink
	stoneskin = stoneskin
	aus = auspice
	barair = baraera
	barbliz = barblizzara
	barfire = barfira
	barstone = barstonra
	barth = barthundra
	barwater = barwatera
	baramn = baramnesra
	barblind = barblindra
	barpara = barparalyzra
	barpetra = barpetra
	barpoison = barpoisonra
	barsil = barsilencera
	barsleep = barsleepra
	barvir = barvira
	bagi = boost-agi
	bchr = boost-chr
	bdex = boost-dex
	bint = boost-int
	bmnd = boost-mnd
	bstr = boost-str
	bvit = boost-vit
	ca1, ca2, ca3 = curas
	asuna = esuna
	phx = phalanx
	pra1, pra2, pra3, pra4, pra5 = protectras
	sra1, sra2, sra3. sra4, sra5 = shellras
	rr1, rr2, rr3, rr4 = reraises

Single targeting spells (will be used on the player asking):

	arise = arise
	r1, r2, r3 = raises
	iw or hstorm = hailstorm
	fw or fstorm = firestorm
	rw or rstorm= rainstorm
	ew or sstorm = sandstorm
	tw or tstorm = thunderstorm
	ww or wstorm = windstorm
	lw or astorm = aurorastorm
	dw or vstorm = voidstorm
	zzz = curaga
	c1, cg2, c3, c4, c5 = curagas
	c1, c2, c3, c4, c5, c6 = cures
	fl1 = flurry
	fl2 = flurry ii
	fullcure = full cure
	haste = haste
	haste2 = haste ii
	phx2 = phalanx ii
	p1, p2, p3, p4, p5 = protects
	s1, s2, s3, s4, s5 = shells
	ref1, ref2, ref3 = refreshes
	rg1, rg2, rg3, rg4, rg4 = regens
	deo = deodorize
	invis = invisible
	snk = sneak
	doom, doomed, curse, or cursed = cursna
	blind or blinded = blindna
	para or paralyzed = paralyna
	poison or poisoned = poisona
	silena or silenced = silena
	stoned, petra, petrafied = stona
	virus = viruna
	erase or slowed = erase
	sac = sacrifice
	
Enemy targeting spells (use assistme first):

	dia1, dia2 = dias
	paralyze = paralyze
	silence = silence
	slow = slow
	addle = addle

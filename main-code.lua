--- STEAMODDED HEADER
--- MOD_NAME: Miser's Menagerie
--- MOD_ID: MisersMenagerie
--- MOD_AUTHOR: [Miser]
--- MOD_DESCRIPTION: This Mod is filled with a bunch of stupid stuff!
--- PRIORITY: 2147483648

----------------------------------------------
------------MOD CODE -------------------------
sendDebugMessage("MY BALLS! MY BALLS!!!! HELP MY BALLS ARE EXPLODING AGYWVDUJWGVDWHJGBJDXHVDJHVFUGBEDHJGBVDGVCBJMHVFDJHDSVJD")

SMODS.Atlas{
    key = 'Tarot',
    path = 'Tarots.png',
    px = 71,
    py = 95,
    prefix_config = { key = false }
}

SMODS.Atlas({
	key = "modicon",
	path = "ModIcon.png",
	px = 32,
	py = 32,
}):register()

SMODS.Atlas {
  key = "MisersMenagerieJokers",
  path = "MisersMenagerieJokers.png",
  px = 71,
  py = 95
}

SMODS.Joker {
	key = 'vikram',
	loc_txt = {
		name = 'Vikram Aquasi',
		text = {
      			"Looks at you {C:attention}weird{}.",
      			"That's it. Nothing else.",
      			"...",
      			"{s:1.5}Stop staring!{}",
   		 }
	},
	config = { extra = {} },
	rarity = 1,
	atlas = 'MisersMenagerieJokers',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 4,
}
----------------------------------------------
------------MOD CODE END----------------------
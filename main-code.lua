--- STEAMODDED HEADER
--- MOD_NAME: Miser's Menagerie
--- MOD_ID: MisersMenagerie
--- MOD_AUTHOR: [Miser]
--- MOD_DESCRIPTION: This Mod is filled with a bunch of stupid stuff. I coded the "Aw Dangit" text and the new Vikram card, along with making art for both, and a friend Pupco made the art for Tiff-Taff, Oops All Blover and Pupperton Company.

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

SMODS.Atlas{
    key = 'Joker',
    path = 'Jokers.png',
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
      			"This Joker gains {C:mult}+#1# {} Mult",
      			"For every {C:attention}3{} played.",
      			"{s:0.8}(not scored, take that hack fans){}",
      			"{s:0.5}Really likes space too...{}",
   		 }
	},
	config = { extra = { mult = 5 } },
		loc_vars = function(self, info_queue, card)
    		return { vars = { card.ability.extra.mult } }
  		end,
	rarity = 1,
	atlas = 'MisersMenagerieJokers',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 4,
}

SMODS.Joker {
	key = 'page',
	loc_txt = {
		name = 'The Page of Space',
		text = {
      			"This Joker gains {X:mult,C:white} X#1# {} Mult",
      			"For every {C:attention}3{} played.",
      			"{s:0.8}(still not scored, hack fans in shambles){}",
      			"{s:1.5,C:green}The Page of Space has Awoken.{}",
   		 }
	},
	config = { extra = { Xmult = 1.5 } },
		loc_vars = function(self, info_queue, card)
    		return { vars = { card.ability.extra.Xmult } }
  		end,
	rarity = 4,
	atlas = 'MisersMenagerieJokers',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 3, y = 0 },
	cost = 20,
}
----------------------------------------------
------------MOD CODE END----------------------

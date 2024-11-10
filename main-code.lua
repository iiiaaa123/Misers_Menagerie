--- STEAMODDED HEADER
--- MOD_NAME: Miser's Menagerie
--- MOD_ID: MisersMenagerie
--- MOD_AUTHOR: [Miser]
--- MOD_DESCRIPTION: This Mod is filled with a bunch of stupid stuff. I coded the "Aw Dangit" text and the new Vikram cards, along with making art for both, and a friend Pupco made the art for Tiff-Taff, Oops All Blover and Pupperton Company.
----------------------------------------------
------------MOD CODE -------------------------
sendDebugMessage("no way is that a Miser's Menagerie reference vikram is my favorite troll yo page yo page yo page yo page my brain is melting help")

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
      			"This Joker gains {C:mult}+#2#{} Mult",
      			"For every {C:attention}3{} played.",
      			"{s:0.8}(not scored, take that hack fans){}",
			"{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
      			"{s:0.5}Really likes space too...{}",
   		 }
	},
	config = { extra = { mult = 0, mult_mod = 5 } },
	rarity = 1,
	atlas = 'MisersMenagerieJokers',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 4,
	loc_vars = function(self, info_queue, card)
    	return { vars = { card.ability.extra.mult, card.ability.extra.mult_mod } }
  	end,
	calculate = function(self, card, context)
	if context.joker_main then
      		return {
			mult_mod = card.ability.extra.mult,
		        message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } }
	      	}
   	end
	if context.before and context.cardarea == G.play and context.individual and not context.blueprint then
		local rank = SMODS.Ranks[context.other_card.base.value].key
			if rank == "3" then
				card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
      			return {
      	message = 'Upgraded!',
        colour = G.C.MULT,
	card = card
	}
end


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

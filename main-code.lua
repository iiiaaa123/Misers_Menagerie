--- STEAMODDED HEADER
--- MOD_NAME: Miser's Menagerie
--- MOD_ID: MisersMenagerie
--- MOD_AUTHOR: [Miser]
--- MOD_DESCRIPTION: This Mod is filled with a bunch of stupid stuff. I coded the "Aw Dangit" text and the new Vikram cards (with a lot of help from elbebeta of the balatro discord), along with making art for both, and a friend Pupco made the art for Tiff-Taff, Oops All Blover and Pupperton Company.
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
		if context.before then
			for k, _ in ipairs(context.full_hand) do
				print(context.full_hand[k].base.value)
				if context.full_hand[k]:get_id() == 3 then
					card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
					context.full_hand[k]:juice_up(0.7)
					G.E_MANAGER:add_event(Event({
						func = function()
							card:juice_up(0.7)
							card_eval_status_text(card,'extra',nil ,nil ,nil,{message = "Upgraded", colour = G.C.MULT, instant = true})
							play_sound('chips2')
						return true; end}))
					end
				end
			end
		if context.joker_main then
      		return {
			mult_mod = card.ability.extra.mult,
		        message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } }
	      		}
   		end
	end
}

SMODS.Joker {
	key = 'page',
	loc_txt = {
		name = 'The Page of Space',
		text = {
      			"This Joker gains {X:mult,C:white} X#2# {} Mult",
      			"For every {C:attention}3{} played.",
      			"{s:0.8}(still not scored, hack fans in shambles){}",
		"{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
      			"{s:1.5,C:green}The Page of Space has Awoken.{}",
   		 }
	},
	config = { extra = { x_mult = 1, Xmult_mod = 0.5 } },
	rarity = 4,
	atlas = 'MisersMenagerieJokers',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 3, y = 0 },
	cost = 20,
	loc_vars = function(self, info_queue, card)
    		return { vars = { card.ability.extra.x_mult, card.ability.extra.Xmult_mod } }
  	end,
	calculate = function(self, card, context)
		if context.before then
			for k, _ in ipairs(context.full_hand) do
				if context.full_hand[k]:get_id() == 3 then
					card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.Xmult_mod
					context.full_hand[k]:juice_up(0.7)
					G.E_MANAGER:add_event(Event({
						func = function()
							card:juice_up(0.7)
							card_eval_status_text(card,'extra',nil ,nil ,nil,{message = "Upgraded", colour = G.C.MULT, instant = true})
							play_sound('chips2')
						return true; end}))
					end
				end
			end
		if context.joker_main then
      		return {
			mult_mod = card.ability.extra.mult,
		        message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.x_mult } }
	      		}
   		end
	end
}
----------------------------------------------
------------MOD CODE END----------------------

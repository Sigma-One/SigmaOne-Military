-- Enable coilgun and sniper rifle with military 4 and 3
table.insert(data.raw["technology"]["military-4"].effects, {type = "unlock-recipe", recipe = "coilgun"});
table.insert(data.raw["technology"]["military-3"].effects, {type = "unlock-recipe", recipe = "sniper-rifle"});

-- Enable HE mags with explosives
table.insert(data.raw["technology"]["explosives"].effects, {type = "unlock-recipe", recipe = "explosive-rounds-magazine"});

-- Dragon's Breath with flammables
data.raw["technology"]["flammables"].effects = {{type = "unlock-recipe", recipe = "incendiary-shotgun-shell"}};

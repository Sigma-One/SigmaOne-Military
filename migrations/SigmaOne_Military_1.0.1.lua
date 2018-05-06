for _, f in pairs(game.forces) do
    if f.technologies["flammables"] then
        if f.technologies["flammables"].researched then
            f.recipes["incendiary-shotgun-shell"].enabled=true
        end
    end
    if f.technologies["explosives"] then
        if f.technologies["explosives"].researched then
            f.recipes["explosive-rounds-magazine"].enabled=true
        end
    end
    if f.technologies["military-3"] then
        if f.technologies["military-3"].researched then
            f.recipes["sniper-rifle"].enabled=true
        end
    end
    if f.technologies["military-4"] then
        if f.technologies["military-4"].researched then
            f.recipes["coilgun"].enabled=true
        end
    end
end

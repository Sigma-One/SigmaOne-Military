data:extend(
{
  {
    type = "ammo",
    name = "explosive-rounds-magazine",
    icon = "__SigmaOne_Military__/graphics/items/explosive-rounds-magazine.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "damage",
              damage = { amount = 6, type = "physical"}
            },
            {
              type = "damage",
              damage = { amount = 8, type = "explosion"}
            }
          }
        }
      }
    },
    magazine_size = 7,
    subgroup = "ammo",
    order = "a[basic-clips]-c[explosive-rounds-magazine]",
    stack_size = 200
  }
})

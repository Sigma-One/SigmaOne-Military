data:extend({
{
  type = "ammo",
  name = "incendiary-shotgun-shell",
  icon = "__SigmaOne_Military__/graphics/items/incendiary-shotgun-shell.png",
  icon_size = 32,
  flags = {"goes-to-main-inventory"},
  ammo_type =
  {
    category = "shotgun-shell",
    target_type = "direction",
    clamp_position = true,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            }
          }
        }
      },
      {
        type = "direct",
        repeat_count = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "incendiary-pellet-fire",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.3,
          max_range = 15
        }
      },
      {
        type = "direct",
        repeat_count = 12,
        action_delivery =
        {
          type = "projectile",
          projectile = "incendiary-pellet",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.3,
          max_range = 15
        }
      }
    }
  },
  magazine_size = 8,
  subgroup = "ammo",
  order = "b[shotgun]-c[incendiary]",
  stack_size = 200
}
})

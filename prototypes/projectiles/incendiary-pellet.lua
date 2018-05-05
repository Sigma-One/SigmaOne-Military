data:extend(
{
  {
    type = "projectile",
    name = "incendiary-pellet-fire",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
              type = "damage",
              damage = {amount = 4, type = "physical"}
          },
          {
              type = "damage",
              damage = {amount = 3.5, type = "fire"}
          },
          {
              type = "create-fire",
              entity_name = "fire-flame"
          },
        }
      },
      {
        type = "area",
        radius = 1.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "fire-sticker"
            },
            {
              type = "damage",
              damage = { amount = 2, type = "fire" },
              apply_damage_to_trees = false
            }
          }
        }
      }
    },
    smoke =
    {
      {
        name = "incendiary-trail",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
  {
    type = "projectile",
    name = "incendiary-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
              type = "damage",
              damage = {amount = 4, type = "physical"}
          },
          {
              type = "damage",
              damage = {amount = 3.5, type = "fire"}
          },
        }
      }
    },
    smoke =
    {
      {
        name = "incendiary-trail",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  }
})

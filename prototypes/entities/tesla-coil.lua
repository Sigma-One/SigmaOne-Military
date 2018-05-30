function tesla_turret_extension(inputs)
return
{
  filename = "__SigmaOne_Military__/graphics/entities/tesla-coil/tesla-coil.png",
  priority = "medium",
  scale = 0.4,
  width = 220,
  height = 220,
  frame_count = inputs.frame_count and inputs.frame_count or 21,
  line_length = inputs.line_length and inputs.line_length or 8,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  direction_count = 1,
}
end
function tesla_turret_shadow_extension(inputs)
return
{
  filename = "__SigmaOne_Military__/graphics/entities/tesla-coil/tesla-coil-shadow.png",
  priority = "medium",
  draw_as_shadow = true,
  scale = 0.4,
  width = 220,
  height = 220,
  frame_count = inputs.frame_count and inputs.frame_count or 21,
  line_length = inputs.line_length and inputs.line_length or 8,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  direction_count = 1,
  shift = {0.3, 0.05},
}
end

data:extend({
  {
    type = "electric-turret",
    name = "tesla-coil",
    icon = "__SigmaOne_Military__/graphics/items/tesla-coil.png",
    icon_size = 32,
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "tesla-coil" },
    max_health = 800,
    corpse = "medium-remnants",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    rotation_speed = 1000,
    preparing_speed = 0.1,
    dying_explosion = "medium-explosion",
    folding_speed = 0.1,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "801kJ",
      input_flow_limit = "100000kW",
      drain = "30kW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        {
          filename = "__SigmaOne_Military__/graphics/entities/tesla-coil/tesla-coil-down.png",
          priority = "medium",
          scale = 0.4,
          width = 220,
          height = 220,
          frame_count = 1,
          line_length = 1,
          direction_count = 1,
        },
        {
          filename = "__SigmaOne_Military__/graphics/entities/tesla-coil/tesla-coil-down-shadow.png",
          priority = "medium",
          draw_as_shadow = true,
          scale = 0.4,
          width = 220,
          height = 220,
          frame_count = 1,
          line_length = 1,
          direction_count = 1,
          shift = {0.3, 0.05},
        }
      }
    },
    preparing_animation =
    {
      layers =
      {
        tesla_turret_extension{},
        tesla_turret_shadow_extension{},
      }
    },
    prepared_animation =
    {
      layers =
      {
        {
          filename = "__SigmaOne_Military__/graphics/entities/tesla-coil/tesla-coil-up.png",
          priority = "medium",
          scale = 0.4,
          width = 220,
          height = 220,
          frame_count = 1,
          line_length = 1,
          direction_count = 1,
        },
        {
          filename = "__SigmaOne_Military__/graphics/entities/tesla-coil/tesla-coil-up-shadow.png",
          priority = "medium",
          draw_as_shadow = true,
          scale = 0.4,
          width = 220,
          height = 220,
          frame_count = 1,
          line_length = 1,
          direction_count = 1,
          shift = {0.3, 0.05},
        }
      }
    },
    folding_animation =
    {
      layers =
      {
        tesla_turret_extension{run_mode = "backward"},
        tesla_turret_shadow_extension{run_mode = "backward"},
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },

    attack_parameters =
    {
      type = "beam",
      ammo_category = "electric",
      cooldown = 0,
      range = 15,
      damage_modifier = 4,
      ammo_type =
      {
        type = "beam",
        category = "laser-turret",
        energy_consumption = "800kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "electric-beam",
            max_length = 15,
            duration = 200
          }
        }
      }
    },
    call_for_help_radius = 40
  },
})

data:extend
({
  {
    type = "gun",
    name = "coilgun",
    icon = "__SigmaOne_Military__/graphics/items/coilgun.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[pistol]-e[coilgun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 45,
			damage_modifier = 6,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 1.125,
      range = 20,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  }
})

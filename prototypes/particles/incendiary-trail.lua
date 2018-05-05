data:extend({
  {
    type = "trivial-smoke",
    name = "incendiary-trail",
    flags = {"not-on-map"},
    animation =
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-01.png",
      priority = "high",
      width = 66,
      height = 119,
      animation_speed = 1 / 6,
      frame_count = 3,
      scale = 0.3
    },
    render_layer = "building-smoke",
    affected_by_wind = false,
    movement_slow_down_factor = 0.96,
    duration = 60 * 1.75,
    fade_away_duration = 20,
    show_when_smoke_off = true
  }
})

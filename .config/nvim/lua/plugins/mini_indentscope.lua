local no_anim = require("mini.indentscope").gen_animation.none()

return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        -- delay = 100,
        animation = no_anim,
      },
    },
  },
}

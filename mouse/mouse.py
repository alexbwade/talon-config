# import os

from talon import Context, Module, ctrl

mod = Module()
ctx = Context()


SCREEN_HEIGHT = 1080
SCREEN_WIDTH = 1920
BUFFER = 16

half_width = SCREEN_WIDTH / 2
half_height = SCREEN_HEIGHT / 2
screen_bottom = SCREEN_HEIGHT - BUFFER
screen_top = BUFFER
screen_one_left = BUFFER
screen_one_right = SCREEN_WIDTH - BUFFER
screen_two_left = SCREEN_WIDTH + BUFFER
screen_two_right = SCREEN_WIDTH * 2 - BUFFER
screen_two_x_center = SCREEN_WIDTH + half_width

POSITIONS = {
  # Left monitor
  'center': [half_width, half_height],
  'top': [half_width, BUFFER],
  'top left': [screen_one_left, BUFFER],
  'top right': [screen_one_right, BUFFER],
  'left': [screen_one_left, half_height],
  'right': [screen_one_right, half_height],
  'bottom left': [screen_one_left, screen_bottom],
  'bottom right': [screen_one_right, screen_bottom],
  'bottom': [half_width, screen_bottom],
  # Right monitor
  'second center': [screen_two_x_center, half_height],
  'second top': [screen_two_x_center, screen_top],
  'second top left': [screen_two_left, screen_top],
  'second top right': [screen_two_right, screen_top],
  'second left': [screen_two_left, half_height],
  'second right': [screen_two_right, half_height],
  'second bottom left': [screen_two_left, screen_bottom],
  'second bottom right': [screen_two_right, screen_bottom],
  'second bottom': [screen_two_x_center, screen_bottom],
}

MODIFIER = 20

@mod.action_class
class Actions:
    def move_mouse_by(x: int, y: int):
        """Moves the cursor a certain amount of pixels horizontally and vertically"""
        posX, posY = ctrl.mouse_pos()
        ctrl.mouse_move(posX + (x * MODIFIER), posY - (y * MODIFIER))

    def move_mouse_to(location_name: str):
        """Moves the cursor to a certain named location"""
        x, y = POSITIONS[location_name]
        ctrl.mouse_move(x, y)


# for cmd in POSITIONS:
#     @serenade.command(cmd)
#     async def moveMouse(api):
#         await moveMouseTo(api, cmd)

# @serenade.command('mouse up <amount>')
# async def moveMouseUp(api, matches):
#     await moveMouseBy(api, 0, -getNumber(matches['amount']) * MODIFIER)

# @serenade.command('mouse down <amount>')
# async def moveMouseDown(api, matches):
#     await moveMouseBy(api, 0, getNumber(matches['amount']) * MODIFIER)

# @serenade.command('mouse left <amount>')
# async def moveMouseLeft(api, matches):
#     await moveMouseBy(api, -getNumber(matches['amount']) * MODIFIER, 0)

# @serenade.command('mouse right <amount>')
# async def moveMouseRight(api, matches):
#     await moveMouseBy(api, getNumber(matches['amount']) * MODIFIER, 0)

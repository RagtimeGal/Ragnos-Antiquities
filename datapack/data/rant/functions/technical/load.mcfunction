####################
# Runs when loaded
####################

## Create Scoreboards
scoreboard objectives add rant.dummy dummy

## Run on Load
tellraw @a[predicate=rant:entity_properties/debug_player] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.rant.reload.success","color":"white","bold":false}]
execute unless score #server_version rant.dummy matches 1 run function rant:technical/initiate

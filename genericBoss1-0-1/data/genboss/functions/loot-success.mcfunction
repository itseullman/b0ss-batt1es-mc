# Starts up loot timer, which distributes at 5. Timer won't reset til next fight
# loot-success
# Author: Noob
# Created 10-09-18
# Updated 08-13-20

# Variables Used Here:

# Boss Name:
#   Title = -BNAME-

#   Boss Tag:
#       Tag = -BTAG-


# !!!   initialize NEEDS scoreboard objectives add -BTAG-LootTimer dummy   !!! #


################
### Gameplay ###

scoreboard players add -BTAG-LootTimer -BTAG-LootTimer 1

#   Announcement
execute if score -BTAG-LootTimer -BTAG-LootTimer matches 5 run tellraw @a[team=-BTAG-fight] {"text":"You have recieved -BNAME-'s Loot!"}

#   Celebratory Sound
execute if score -BTAG-LootTimer -BTAG-LootTimer matches 5 run execute at @a[team=-BTAG-fight] run playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 100

#    Tellraw
execute if score -BTAG-LootTimer -BTAG-LootTimer matches 5 if entity @a[team=-BTAG-fight,distance=..200] run tellraw @a {"text":"[ ","color":"white","bold":true,"extra":[{"text":"B0ss Battles ","color":"dark_purple","bold":true},{"text":"] ","color":"white","bold":true},{"selector":"@a[team=-BTAG-fight,distance=..200]","color":"white","bold":false},{"text":" just defeated -BNAME-!","color":"light_purple","bold":false}]}

################
################



#####################
### Physical Loot ###

#    XP reward
execute if score -BTAG-LootTimer -BTAG-LootTimer matches 5 run xp add @a[team=-BTAG-fight,distance=..50] 15 levels

#    Preset shulkerbox reward
execute if score -BTAG-LootTimer -BTAG-LootTimer matches 5 run give @a[team=-BTAG-fight,distance=..50] minecraft:light_blue_shulker_box{display:{Name:"{\"text\":\"-BNAME- Loot\",\"color\":\"dark_aqua\",\"italic\":\"true\"}"},BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:tropical_fish",Count:4b},{Slot:1b,id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:"{\"text\":\"Sword of Peng\",\"color\":\"green\"}"},RepairCost:1000000,Enchantments:[{id:"minecraft:sharpness",lvl:7},{id:"minecraft:knockback",lvl:3},{id:"minecraft:looting",lvl:2},{id:"minecraft:sweeping",lvl:3},{id:"minecraft:unbreaking",lvl:4}]}},{Slot:2b,id:"minecraft:diamond",Count:9b},{Slot:4b,id:"minecraft:gold_ingot",Count:19b},{Slot:7b,id:"minecraft:prismarine_bricks",Count:44b},{Slot:8b,id:"minecraft:prismarine_shard",Count:30b},{Slot:10b,id:"minecraft:prismarine_crystals",Count:15b,tag:{display:{Name:"{\"text\":\"Naut Coins\",\"color\":\"gold\",\"italic\":\"true\"}",Lore:["Ancient Naut currency"]},Enchantments:[{id:"minecraft:looting",lvl:1}]}},{Slot:11b,id:"minecraft:emerald",Count:14b},{Slot:12b,id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:"{\"text\":\"Leviathan Chestplate\",\"color\":\"aqua\"}",Lore:["The full set is quite dangerous in and out of water..."]},RepairCost:1000000,Enchantments:[{id:"minecraft:protection",lvl:7},{id:"minecraft:fire_protection",lvl:3},{id:"minecraft:thorns",lvl:1},{id:"minecraft:unbreaking",lvl:1}]}},{Slot:14b,id:"minecraft:enchanted_golden_apple",Count:3b},{Slot:15b,id:"minecraft:turtle_helmet",Count:1b},{Slot:17b,id:"minecraft:iron_ingot",Count:49b},{Slot:19b,id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:"{\"text\":\"Leviathan Boots\",\"color\":\"aqua\"}",Lore:["The full set is quite dangerous in and out of water..."]},RepairCost:1000000,Enchantments:[{id:"minecraft:protection",lvl:3},{id:"minecraft:fire_protection",lvl:3},{id:"minecraft:feather_falling",lvl:1},{id:"minecraft:thorns",lvl:2},{id:"minecraft:depth_strider",lvl:5},{id:"minecraft:unbreaking",lvl:2}]}},{Slot:20b,id:"minecraft:dark_prismarine",Count:24b},{Slot:21b,id:"minecraft:written_book",Count:1b,tag:{title:"Ancient Naut Texts Vol. I",author:"Unknown",pages:["{\"text\":\"Gur Anhgf qrfpraq sebz gur fheivibef bs gur vagreangvbany erfrnepu pbzzhavgvrf va gur Nepgvp naq Nagnepgvp.Gurl unir ab prageny flfgrz bs tbireazrag, ohg ner n ybbfryl betnavmrq pbnyvgvba bs nanepuvfgf fhpu nf zrepunagf, fbyqvref naq erfrnepuref.\"}","{\"text\":\"Gur Anhgf gbbx zbfg bs gurve xabj-ubj sebz gur fpvragvfgf bs gur Rnegu'f fhesnpr naq unir orra noyr gb ubar gurfr inyhnoyr fxvyyf. Bgure pbasrqrengvbaf uvtuyl gernfher gur xabjyrqtr bs gur Anhgf naq gurve znahsnpgherq tbbqf.\"}"]}},{Slot:23b,id:"minecraft:turtle_egg",Count:8b},{Slot:25b,id:"minecraft:sponge",Count:11b},{Slot:26b,id:"minecraft:golden_apple",Count:7b}]}} 1

#####################
#####################



#########################
### Remove Objectives ###

# ability objs
scoreboard objectives remove -BTAG-abil-1
scoreboard objectives remove -BTAG-abil-2
scoreboard objectives remove -BTAG-abil-3

# summon objs
scoreboard objectives remove -MTAG1-Timer
scoreboard objectives remove -MTAG2-Timer

#########################
#########################



# Debug #

#########
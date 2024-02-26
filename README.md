
# Random-Minecraft-Projects
## Custom Arrows
Made for pavitrprabhakar7824 on the MinecraftCommand Discord. Works in 1.20.4.
### What it does
When a bow is given a specific name in an anvil, the resulting arrow shot from that bow will have some special property. The ones which are currently in the pack are 
- "Creeper"
  - The arrow has a creeper's head on the end
  - The arrow explodes on impact
- "Player"
  - The arrow has a Steve head on the end
  - Teleports a random players to it on impact 
- "Slime"
  - The arrow has a slime block on the end (scaled up by a factor of 2)
  - Spawns a slime on impact, and produces particles.
- And any other name either gets treated as 
  1. A username. If the user whos name is on the bow is online, their head will be put onto the end of the arrow and they will be teleported to the arrow when it lands.
  2. or just a normal arrow. 
 ### How to add more arrow types
 In the `custom_arrows:load` function, you will see a bunch of lines that each append a compound to a global list called "arrow types". You can add as many as you'd like, and they'll be handled by the pack.
 Each compound contains these values:
 - `id` _string_ (**required**): The unique identifier for that arrow type. It must follow the same grammatical rules that namespaces do in minecraft i.e. only lowercase ascii letters, underscores, numbers etc.
 - `item_name` _string_: The bow name which is associated with this arrow type. Doesn't support names which include `"` or `\` characters.
 - `mount_item` _item stack\*_: The item which gets fixed to the head of the arrow. If no `id` is specified, or the specified `id` is not a valid item resource location, no item will be displayed. The `Count` field is not required to be specified as the default value of 1 is used as a base. The compound also includes a `scale` _float_ field which is used to modify the `transformation.scale[]` values of the item display.
 - `arrow_model` _int_: The `custom_model_data` value associated with the base arrow model you want to use. If unspecified, the default value is 1 (a normal arrow).
 - `persistent` _bool_: Whether the arrow should disappear when it lands, or stay there. If true, the arrow will stay in the ground until it despawns or is picked up and its associated event will run every tick while it is there. Defaults to `false`.

Once you have added the compound to the list, you can also add a function in the `arrow_events` folder with the same name as your chosed arrow type `id`. This function will run when the arrow is in the ground.

# Serbian translation of Pokemon Red/Blue

### Overview
As a learner of Serbian and a long time fan of the original Pokemon games, I decided to create a Serbian translation of
Pokemon Red/Blue. This project serves both as a way to practice my Serbian language skills and also sharing my passion 
for Pokemon with other Serbian speakers and learners. The translation will include all in-game text, such as dialogue, 
item descriptions, move names, and location names. The goal is to create a faithful and enjoyable experience for Serbian
speaking players while also showcasing the beauty of the Serbian language. 

### Localization rules
- All text should be translated to standard, ekavian, Serbian, using the latin script.
- Pokémon names are translated to creative serbian names, often based on the original English names, but adapted to fit 
Serbian phonetics and morphology.
- Move names are translated to descriptive Serbian names that reflect the move's effect or type.
- Item names are translated to descriptive Serbian names that reflect their function or appearance.
- Location names are translated to descriptive Serbian names that reflect the location's characteristics or history.
- Trainer names are translated to common Serbian names that fit the character's personality or role.
- The text should maintain the tone and style of the original game, while also being culturally relevant
- All text should be proofread and edited for grammar, spelling, and punctuation to ensure it is clear and easy to 
understand for Serbian players.
- Full serbian diacritics should be used, including letters like č, ć, ž, š, and đ.
- The translation should be consistent throughout the game, with the same terms and phrases used for the same concepts 
and items.

### Text Architecture
The text in Pokemon Red/Blue is distributed across various locations, including:
- text/*.asm for map and npc dialogue
- data/text/text_*.asm for grouped text banks
- data/pokemon/dex_text.asm for Pokedex body text
- data/moves/names.asm for move names
- data/items/names.asm for item names
- data/pokemon/names.asm for Pokemon names
- data/trainers/names.asm for trainer names
- Other name lists under data/ that may include location names, type names, and more.

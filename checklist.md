# Pokémon Red → Serbian (Ekavian Latinica) Translation Project Checklist

## Phase 0 — Setup and orientation

- [x] Build the unmodified `pokered` repo successfully
  - [x] Read `INSTALL.md`
  - [x] Read `README.md`
  - [x] Confirm the vanilla ROM builds cleanly
  - [x] Create a clean baseline branch/tag before localization work

- [x] Inspect the overall repo structure
  - [x] Review `includes.asm`
  - [x] Review `text.asm`
  - [x] Review top-level folders:
    - [x] `constants/`
    - [x] `data/`
    - [x] `engine/`
    - [x] `gfx/`
    - [x] `macros/`
    - [x] `scripts/`
    - [x] `text/`

---

## Phase 1 — Lock translation policy before editing anything

- [x] Write localization rules
  - [x] Confirm target language: **standard Serbian**
  - [x] Confirm dialect: **ekavian**
  - [x] Confirm script: **Latinica**
  - [x] Use full diacritics everywhere: `č ć đ š ž`
  - [x] Localize Pokémon names
  - [x] Localize move names
  - [x] Localize item names
  - [x] Localize for trainer class names
  - [x] Localize for place names
  - [x] Localize for UI verbs like:
    - [x] Use
    - [x] Run
    - [x] Save
    - [x] Quit
    - [x] Cancel

---

## Phase 2 — Learn the text/script system

- [x] Inspect text-control macros
  - [x] Read `macros/scripts/text.asm`
  - [x] Review the rest of `macros/scripts/`
  - [x] Understand:
    - [x] `text`
    - [x] `line`
    - [x] `cont`
    - [x] `para`
    - [x] `page`
    - [x] `prompt`
    - [x] `done`
    - [x] `dex`

- [x] Inspect hard text constraints
  - [x] Read `constants/text_constants.asm`
  - [x] Review other relevant files in `constants/`
  - [x] Identify fixed-length constraints for:
    - [x] names
    - [x] items
    - [x] moves
    - [x] UI labels

- [x] Inspect the text include structure
  - [x] Read `text.asm`
  - [x] Review `text/`
  - [x] Review `data/text/`

---

## Phase 3 — Add Serbian character support

- [x] Patch the charmap
  - [x] Edit `constants/charmap.asm`
  - [x] Add lowercase:
    - [x] `č`
    - [x] `ć`
    - [x] `đ`
    - [x] `š`
    - [x] `ž`
  - [x] Add uppercase:
    - [x] `Č`
    - [x] `Ć`
    - [x] `Đ`
    - [x] `Š`
    - [x] `Ž`
  - [x] Verify `includes.asm` path/inclusion still works

- [x] Patch font glyph graphics
  - [x] Edit `gfx/font/`
  - [x] Patch `gfx/font/font.1bpp`
  - [x] Patch `gfx/font/font_extra.2bpp` only if still needed
  - [x] Review `gfx/font.asm`
  - [x] Verify all Serbian glyphs render correctly

- [x] Test textbox rendering with a temporary string
  - [x] Temporarily edit `text/OaksLab.asm` or another easy early-game file
  - [x] Confirm Serbian diacritics display correctly in normal dialogue

---

## Phase 4 — Fix the naming screen

- [x] Patch naming screen alphabet pages
  - [x] Edit `data/text/alphabets.asm`
  - [x] Add Serbian-friendly lowercase page
  - [x] Add Serbian-friendly uppercase page
  - [x] Fix case toggle labels
  - [x] Confirm no stale characters remain after toggling

- [x] Inspect naming screen logic if needed
  - [x] Review `engine/menus/`
  - [x] Review naming screen code
  - [x] Review `data/text/dakutens.asm` if relevant

- [x] Test naming screen fully
  - [x] Lowercase Serbian letters render
  - [x] Uppercase Serbian letters render
  - [x] Toggle between cases works
  - [x] Entering names works without corruption

---

## Phase 5 — Translate the shortest UI strings first

- [x] Translate yes/no and tiny menu choices
  - [x] Edit `data/yes_no_menu_strings.asm`

- [x] Translate fixed menu and box labels
  - [x] Edit `data/text_boxes.asm`

- [x] Translate player/rival defaults
  - [x] Edit `data/player/names.asm`
  - [x] Edit `data/player/names_list.asm`

- [x] Test short UI strings in game
  - [x] Menu overflow
  - [x] Shop text
  - [x] Battle text
  - [x] Selection boxes

---

## Phase 6 — Translate recurring dictionaries before story dialogue

- [ ] Translate Pokémon names
  - [ ] Edit `data/pokemon/names.asm`

- [x] Translate item names
  - [x] Edit `data/items/names.asm`

- [ ] Translate trainer names/classes
  - [ ] Edit `data/trainers/names.asm`

- [x] Translate move names
  - [x] Edit `data/moves/names.asm`
  - [x] Edit `data/moves/field_move_names.asm`

---

## Phase 7 — Build and test the automation pipeline on a small subset

- [ ] Finish `.asm -> json` exporter
  - [ ] Target `text/*.asm`

- [ ] Finish translation template generator

- [ ] Finish validator
  - [ ] Preserve labels
  - [ ] Preserve placeholders
  - [ ] Preserve non-translatable commands
  - [ ] Detect malformed output

- [ ] Finish `json -> .asm` importer

- [ ] Test the full loop on a tiny subset
  - [ ] `text/OaksLab.asm`
  - [ ] one simple house/route file from `text/`

- [ ] Confirm rebuilt ASM is valid before scaling up

---

## Phase 8 — Bulk translate map and event text in repo order

- [ ] Translate text in `text.asm` include order
  - [ ] Work through `text/`
  - [ ] Work through `data/text/`
  - [ ] Do not translate random files out of order

- [ ] Translate in grouped batches
  - [ ] early game
  - [ ] towns/routes
  - [ ] gyms
  - [ ] dungeons
  - [ ] Silph / Safari / special locations
  - [ ] League / endgame

- [ ] Commit translation progress in logical chunks
  - [ ] early-game chunk
  - [ ] route/town chunk
  - [ ] gym chunk
  - [ ] dungeon chunk
  - [ ] endgame chunk

---

## Phase 9 — Add width-aware merge and overflow handling

- [ ] Enforce the 18-character line limit in the merge pipeline
  - [ ] Preserve model-provided segment boundaries when possible
  - [ ] Wrap only per segment when necessary
  - [ ] Hyphenate only when a single word is too long

- [ ] Expand text flow instead of collapsing overflow
  - [ ] Support:
    - [ ] `text`
    - [ ] `line`
    - [ ] `cont`
    - [ ] extra `cont` as needed
  - [ ] Remove “overflow collapsed” fallback

- [ ] Update validator for expanded text-command sequences
  - [ ] Preserve prefix commands
  - [ ] Preserve suffix commands
  - [ ] Allow expanded `text/line/cont` blocks
  - [ ] Enforce placeholder preservation
  - [ ] Enforce line width ≤ 18

---

## Phase 10 — Add automatic repair for hard cases

- [ ] Detect records that still fail after merge
  - [ ] Use merge output
  - [ ] Use width-validation output

- [ ] Add targeted repair pass
  - [ ] Re-query only failing records
  - [ ] Preserve file and label
  - [ ] Preserve placeholders
  - [ ] Compress naturally into shorter Serbian
  - [ ] Re-validate repaired output

- [ ] Save repaired output back into checkpoint/template JSON

---

## Phase 11 — Translate the Pokédex separately

- [ ] Translate Pokédex body text
  - [ ] Edit `data/pokemon/dex_text.asm`
  - [ ] Edit `data/pokemon/dex_entries.asm`

- [ ] QA Pokédex separately
  - [ ] page flow
  - [ ] consistency of species terminology
  - [ ] style consistency across entries

---

## Phase 12 — Audit graphics with embedded English text

- [ ] Inspect graphics with visible text
  - [ ] `gfx/`
  - [ ] `gfx/title/`
  - [ ] `gfx/version.asm`
  - [ ] any other rasterized text-bearing assets

- [ ] Decide which graphics need localization
- [ ] Patch graphics only after terminology is already stable

---

## Phase 13 — Residue sweep for missed English

- [ ] Search for leftover visible English across:
  - [ ] `text/`
  - [ ] `data/`
  - [ ] `engine/`
  - [ ] `scripts/`
  - [ ] `gfx/`

- [ ] Sweep for:
  - [ ] untranslated short strings
  - [ ] odd fallback text
  - [ ] repeated terminology mismatches
  - [ ] forgotten menu labels
  - [ ] hidden/system text

---

## Phase 14 — QA by subsystem

- [ ] Normal textbox QA
  - [ ] intro
  - [ ] Oak’s Lab
  - [ ] towns
  - [ ] routes
  - [ ] houses
  - [ ] dungeons

- [ ] UI QA
  - [ ] party screen
  - [ ] bag/items
  - [ ] marts
  - [ ] Poké Centers
  - [ ] PC text
  - [ ] battle menus
  - [ ] Safari UI
  - [ ] save/load

- [ ] Naming and Pokédex QA
  - [ ] naming screen
  - [ ] uppercase/lowercase toggle
  - [ ] Serbian diacritics
  - [ ] Pokédex pages

- [ ] Overflow/format QA
  - [ ] no line > 18 chars
  - [ ] no broken placeholders
  - [ ] no broken command flow
  - [ ] no malformed `text/line/cont` sequences

---

## Phase 15 — Freeze style and terminology

- [ ] Review all translated output for consistency
  - [ ] `text/`
  - [ ] `data/`
  - [ ] glossary
  - [ ] regenerated ASM files

- [ ] Normalize:
  - [ ] repeated terms
  - [ ] capitalization
  - [ ] register/tone
  - [ ] abbreviations
  - [ ] franchise terminology

---

## Phase 16 — Package the final project

- [ ] Prepare final translated `.asm` files
- [ ] Save translation scripts
- [ ] Save glossary
- [ ] Document charmap/font changes
- [ ] Document naming screen changes
- [ ] Document line-length handling logic
- [ ] Document known limitations
- [ ] Save sample screenshots
- [ ] Write rebuild instructions
- [ ] Create patch/fork release notes

---

# Suggested execution order summary

- [ ] Build vanilla repo
- [ ] Inspect `INSTALL.md`, `includes.asm`, `text.asm`, `macros/scripts/text.asm`
- [ ] Patch `constants/charmap.asm`
- [ ] Patch `gfx/font/`
- [ ] Patch `data/text/alphabets.asm`
- [ ] Fix naming screen
- [ ] Translate short UI in `data/`
- [ ] Translate dictionaries in:
  - [ ] `data/pokemon/`
  - [ ] `data/items/`
  - [ ] `data/moves/`
  - [ ] `data/trainers/`
- [ ] Finish exporter/importer/validator pipeline
- [ ] Test pipeline on 1–2 files in `text/`
- [ ] Bulk-translate `text/` and `data/text/` in `text.asm` order
- [ ] Add width-aware merge
- [ ] Add expanded `text/line/cont`
- [ ] Add auto-repair for hard cases
- [ ] Translate Pokédex
- [ ] Audit `gfx/`
- [ ] Residue sweep
- [ ] QA
- [ ] Style freeze
- [ ] Package final project
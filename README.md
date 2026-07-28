# RaiiNet
This project is a re-creation of the popular board game Stratego in C++.

## Features
- Turn-based two-player gameplay
- Configurable link placement and ability order through command-line arguments
- Multiple player abilities
- Text-based game display
- Optional graphical display mode
- Object-oriented design using C++20 modules
- Modular architecture separating players, links, abilities, tiles, and display logic

## Technologies
- C++20
- C++ Modules
- GNU Make

## Project Structure
```
.
├── main.cc
├── player.cc
├── link.cc
├── tile.cc
├── ability.cc
├── display.cc
├── window.cc
└── Makefile
```

## Building
Compile the project using the provided Makefile:
```bash
make
```

## Running
Run the game with:
```bash
./raiiNet
```

### Optional Command-Line Arguments
| Argument | Description |
|----------|-------------|
| `-ability1 <order>` | Set Player 1's ability order |
| `-ability2 <order>` | Set Player 2's ability order |
| `-link1 <order>` | Set Player 1's link order |
| `-link2 <order>` | Set Player 2's link order |
| `-graphics` | Enable graphical display |

Example:
```bash
./raiiNet -graphics \
  -ability1 LFDSP \
  -ability2 PLSDF \
  -link1 V1V2V3V4D1D2D3D4 \
  -link2 D1D2D3D4V1V2V3V4
```

## Gameplay
Each player controls eight links consisting of **Data** and **Virus** units. Players move links around the board, use special abilities strategically, and attempt to download all of their data links before their opponent.

## Design
The project follows an object-oriented design with separate classes responsible for:
- **Player** – manages links, abilities, and game state
- **Link** – represents individual data or virus links
- **Ability** – stores player abilities and usage status
- **Tile** – represents board spaces
- **Display** – handles text-based output
- **Window** – supports graphical rendering

## Future Improvements
- AI opponent
- Save/load game functionality
- Additional abilities and game modes
- Improved graphical interface
- Unit tests


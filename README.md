# sm_disassembly
 The Nintendo Switch Online version of the relocatable disassembly of Super Metroid (SNES) based on P.JBoy's bank logs.

 Assembles with asar v1.81: https://github.com/RPGHacker/asar/releases/tag/v1.81

 This project was released when it was considered "usable" but more work is planned.


# REBASE WARNING
 This branch is intended to be a single commit or changeset off of the main NTSC branch.
 Therefore expect this branch to be rebased in the future, which means any commits in this branch may be replaced with a newer different commit.


## Getting Started
 1. Have python3 installed. Windows users may also need to setup their PATH environment variable so python can be accessed from anywhere.
 2. If you're on Linux, mark tools/asar-standalone as executable.
 3. Place your original, unheadered Super Metroid NTSC ROM in the root directory and name it `Super Metroid.sfc`.
 4. Run `create_data.bat` on Windows or `create_data.sh` on Linux to extract assets from your original ROM.
 5. Run `build_rom.bat` on Windows or `build_rom.sh` on Linux to assemble the ROM from source.


## Contributing
 Feel free to contribute to the project by creating an issue, opening a pull request, or contacting me directly.


## Special Thanks
 This project relies heavily on P.JBoy's bank logs: https://patrickjohnston.org/bank/index.html

 Originally created with DiztinGUIsh: https://github.com/IsoFrieze/DiztinGUIsh

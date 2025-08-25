# Caravan Guards

A Majesty: The Fantasy Kingdom Sim modification that enables Monks, Warriors, and Adepts to serve as caravan guards, expanding tactical options for protecting trading routes.

## Overview

Caravan Guards enhances gameplay by allowing three hero classes (Monks, Warriors, and Adepts) to actively protect merchant caravans from threats. This mod adds strategic depth to economic management by providing additional protection options for your valuable trading routes and expanding tactical possibilities for defending your kingdom's economic interests.

## Features

- **Expanded Hero Roles**: Monks, Warriors, and Adepts can now guard caravans in addition to their existing duties
- **Strategic Flexibility**: Heroes will prioritize caravan protection when unguarded caravans are nearby
- **Enhanced Economy Protection**: Better defense of trade routes improves economic stability
- **Tactical Decision Making**: Heroes balance caravan protection with their other responsibilities
- **Visual Feedback**: Heroes display "Guarding Caravan" intent when protecting trade routes

## How It Works

### Hero Behavior Changes

1. **Guard Check**: Heroes periodically check for unguarded caravans within their sight range
2. **Protection Priority**: Heroes will defend nearby caravans when no other guards are present
3. **Multi-Class Support**: Monks, Warriors, and Adepts all gain caravan guarding capabilities
4. **Intent Display**: When guarding, heroes show "Guarding Caravan" as their current activity
5. **Dynamic Protection**: Guard assignment considers distance and existing guard coverage

### Technical Implementation

- **Decision Tree Integration**: Modified decision trees for Adepts, Warriors, and Monks include caravan guarding logic
- **Enhanced Guard Module**: Improved guard checking system with caravan-specific parameters
- **Range-Based Detection**: Heroes detect caravans within their sight range multiplied by 10
- **Smart Assignment**: Guards are assigned to ensure no caravan has more than 4 protectors

## Installation

1. **Copy to Game Directory**: Copy the entire `Caravan Guards` folder to your Majesty's `MODS` directory
   - Usually located at: `C:\Program Files (x86)\Steam\steamapps\common\Majesty\MODS\`
   - Or: `C:\Program Files\Majesty Gold HD\MODS\`

2. **Launch Game**: Start Majesty with the expansion pack
3. **Enable Mod**: The mod will appear in your mod list as "Caravan Guards"
4. **Start New Game**: The mod requires a new game to take effect

## Files Structure

```
Caravan Guards/
├── CaravanGuards.mmxml          # Main mod configuration
├── CaravanGuards.bcd            # Compiled GPL scripts
├── CaravanGuards.mswproj        # Project file
├── AdeptCaravan.jpg             # Mod icon
├── README.md                   # This file
├── LICENSE                     # MIT License
├── Data/
│   └── Intent_Text.xml         # Intent text strings
├── GPL/
│   ├── NewDecisionTrees.gpl    # Modified hero decision trees
│   └── modified_guard_module.gpl # Enhanced guard system
├── Gplbcc.exe                  # GPL compiler
├── MakeGPL.bat                 # Build script
└── TempProject.gplproj         # GPL project file
```

## Technical Details

### GPL Implementation

- **Modified Decision Trees**: Enhanced AI decision making for three hero classes
- **Guard Module Enhancement**: Improved `$Guard_check()` function with caravan support
- **Intent System**: Custom intent "#Intent_Guard_Caravan" for visual feedback
- **Range Calculations**: Uses hero sight range × 10 for caravan detection
- **Smart Guard Limits**: Prevents over-protection (maximum 4 guards per caravan)

### Hero Class Changes

- **Adepts**: Can now prioritize caravan protection alongside spell casting and research
- **Warriors**: Enhanced combat capabilities now include caravan defense
- **Monks**: Balance healing duties with trade route protection
- **All Classes**: Maintain existing behaviors while adding caravan guarding option

## Compatibility

- **Game Version**: Requires Majesty: The Fantasy Kingdom Sim (Expansion recommended)
- **Other Mods**: Should be compatible with most mods that don't alter hero AI
- **Save Games**: Not compatible with existing save games - requires new game

## Development

### Requirements
- Majesty GPL Compiler (`Gplbcc.exe`)
- Text editor for GPL scripting
- XML editor for data files

### Building from Source
1. Modify GPL files in the `GPL/` directory
2. Run `MakeGPL.bat` to compile scripts
3. Test in game environment
4. Package all files for distribution

## Credits & Attribution

### Original Game
- **Majesty: The Fantasy Kingdom Sim** - Owned by **Paradox Interactive**
- **Original Development**: Cyberlore Studios (1996)
- **Gold HD Edition**: Developed by 1C Company with modern platform updates
- **Steam Distribution**: Provided by Paradox Interactive

### Mod Creation
Created for the Majesty modding community to enhance strategic gameplay.

**Special Thanks:**
- Dracoceros for initial modding guidance
- Enerril for GPL scripting assistance
- The entire Majesty modding community for sharing knowledge and examples

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

### For Mod-Specific Issues:
1. Check for updates to ensure you're using the latest version
2. Verify you're running a new game (not loading an old save)
3. Check that the expansion pack is active
4. Review game logs for any GPL compilation errors

### For Game-Related Issues:
1. Contact official Steam support
2. Check game forums for known issues
3. Ensure your game is up to date

### Troubleshooting:
1. Ensure the mod files are in the correct directory
2. Verify you're running a new game (not loading an old save)
3. Check that the expansion pack is active
4. Review game logs for any GPL compilation errors

---

**Note**: This mod enhances gameplay by adding strategic depth to caravan protection. Use it to create more robust trade networks and protect your economic interests from wandering monsters and enemy heroes!

**Remember**: By using this mod, you agree to respect the intellectual property of Paradox Interactive and comply with all applicable terms of service.

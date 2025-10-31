# Menu 11 Next

Configurable grid of application icons for KDE Plasma 6.

## Versions

- **main**: Default version with solid background
- **blur-transparency**: Version with Plasma blur and transparency effects

## Plasma 6 Compatibility

This fork includes fixes for Plasma 6 and Qt6 compatibility, specifically addressing the October 2025 Arch Linux updates.

### Changes

- Removed deprecated module imports
- Updated all imports to versionless format
- Fixed enum references for PlasmaCore.Types
- Added missing Logic component
- Corrected layout implementation
- Removed undefined references

## Installation

```bash
kpackagetool6 --type=Plasma/Applet --install .
```

Or copy to `~/.local/share/plasma/plasmoids/menu.11.next/`

## Credits

Original: Eisteed

## License

GPL-2.0+

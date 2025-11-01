# Menu 11 Enhanced

A modern, configurable application launcher for KDE Plasma 6 with a grid-based layout.

![Main View](https://i.imgur.com/gD3OzuK.png)
![All Apps](https://i.imgur.com/twZCQqO.png)

## Features

### Core Functionality

- **Grid Layout**: Configurable grid of application icons with customizable rows and columns
- **Multi-Page Interface**: Separate views for pinned apps, all applications, and recent documents
- **Smart Search**: Quick application search with keyboard navigation
- **Drag and Drop**: Reorder favorites and add applications to favorites via drag and drop
- **Recent Documents**: Quick access to recently opened files with file manager integration
- **Context Menu**: Right-click support for app-specific actions and favorites management

### Customization Options

- **Icon Sizes**: Adjustable icon sizes for both applications and documents (Small, Medium, Large, Huge)
- **Grid Configuration**: Configure number of columns (3-15) and rows (1-15)
- **Custom Button Icon**: Use custom icons or images for the launcher button
- **Menu Position**: Choose between default, center, or center-bottom positioning
- **Favorites**: Pin frequently used applications for quick access

### User Interface

- **Modern Design**: Clean interface with smooth transitions and hover effects
- **Footer Toolbar**: Quick access to user home, system settings, and session management
- **Session Controls**: Lock screen, sleep, restart, and shutdown buttons
- **User Profile**: Display user avatar and full name with direct access to user settings
- **Keyboard Navigation**: Full keyboard support for efficient navigation

### Integration

- **System Settings**: Direct integration with KDE System Settings and user configuration
- **File Manager**: Opens directories and recent documents in default file manager
- **Activity Support**: Compatible with KDE Activities and virtual desktops
- **Localization**: Multi-language support (English, French, Korean, Dutch, Polish, Portuguese, Russian, Turkish)

## Compatibility

This fork is updated for Plasma 6.5 compatibility.

## Installation

### From Release

Download `menu-11-enhanced-v1.0.0.plasmoid` from [Releases](https://github.com/kurojs/Menu-11-Enhanced/releases) and install:

```bash
kpackagetool6 --type=Plasma/Applet --install menu-11-enhanced-v1.0.0.plasmoid
```

### From Source

```bash
git clone https://github.com/kurojs/Menu-11-Enhanced.git
cd Menu-11-Enhanced
kpackagetool6 --type=Plasma/Applet --install .
```

### Manual Installation

Copy to `~/.local/share/plasma/plasmoids/menu.11.enhanced/`

### Update Existing Installation

```bash
kpackagetool6 --type=Plasma/Applet --upgrade menu-11-enhanced-v1.0.0.plasmoid
```

## Configuration

Right-click the launcher button and select "Configure Menu 11 Enhanced" to access settings:

- **Icon**: Customize the launcher button appearance
- **Apps Icon Size**: Set icon size for application grid
- **Docs Icon Size**: Set icon size for recent documents
- **Menu Position**: Choose where the menu appears
- **Number of Columns**: Adjust grid width (3-15 columns)
- **Number of Rows**: Adjust grid height (1-15 rows)

## Usage

### Adding Favorites

- Drag applications from "All apps" to the pinned section
- Right-click an application and select "Add to Favorites"

### Removing Favorites

- Right-click a pinned application and select "Remove from Favorites"
- Drag favorites around to reorder them

### Keyboard Shortcuts

- **Arrow Keys**: Navigate through applications
- **Enter**: Launch selected application
- **Escape**: Close menu or clear search
- **Tab**: Switch between sections
- **Type**: Start searching immediately

## Credits

- Original: [adhec/OnzeMenuKDE](https://github.com/adhec/OnzeMenuKDE)
- Fork: [Eisteed/menu-11-next](https://github.com/Eisteed/menu-11-next)
- Enhanced Version: kurojs

## License

GPL-2.0+

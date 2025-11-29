# Menu 11 Enhanced

A modern, configurable application launcher for KDE Plasma 6 with a grid-based layout.

![Main View](https://i.imgur.com/BE3HXJe.png)

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
- **Toggle Features**: Show/Hide "Recent Documents" and "Application Descriptions"

### User Interface

- **Modern Design**: Clean interface with smooth transitions and hover effects
- **Footer Toolbar**: Quick access to user home, system settings, and session management
- **Session Controls**: Lock screen, sleep, restart, and shutdown buttons
- **User Profile**: Display user avatar and full name with direct access to user settings
- **Keyboard Navigation**: Full keyboard support for efficient navigation

## Gallery

### All Apps View
![All Apps](https://i.imgur.com/7OkkCWC.png)

### Settings
![Settings](https://i.imgur.com/DxEhpjf.png)

### Minimalist Mode (No Recent Documents)
![No Recent Docs](https://i.imgur.com/YZ5RLBE.png)

### Compact List (No Descriptions)
![No Descriptions](https://i.imgur.com/ZIFUD4S.png)

## Compatibility

This fork is updated for Plasma 6.5 compatibility.

## Installation

### Method 1: Via Plasma GUI (Recommended)

1. Download `menu.11.enhanced-v1.1.0.plasmoid` from [Releases](https://github.com/kurojs/Menu-11-Enhanced/releases).
2. Right-click on the desktop or panel.
3. Select "Enter Edit Mode".
4. Click "Add Widgets...".
5. Click "Get New Widgets" → "Install Widget From Local File...".
6. Select the downloaded `.plasmoid` file.
7. Click "Install".

### Method 2: Command Line

Download `menu.11.enhanced-v1.1.0.plasmoid` and run:

```bash
kpackagetool6 --type=Plasma/Applet --install menu.11.enhanced-v1.1.0.plasmoid
```

### Method 3: From Source

```bash
git clone https://github.com/kurojs/Menu-11-Enhanced.git
cd Menu-11-Enhanced
kpackagetool6 --type=Plasma/Applet --install .
```

### Update Existing Installation

```bash
kpackagetool6 --type=Plasma/Applet --upgrade menu.11.enhanced-v1.1.0.plasmoid
```

## Configuration

Right-click the launcher button and select "Configure Menu 11 Enhanced" to access settings:

- **Icon**: Customize the launcher button appearance
- **Apps Icon Size**: Set icon size for application grid
- **Docs Icon Size**: Set icon size for recent documents
- **Menu Position**: Choose where the menu appears
- **Number of Columns**: Adjust grid width (3-15 columns)
- **Number of Rows**: Adjust grid height (1-15 rows)
- **Show Recent Documents**: Toggle visibility of the recent documents section
- **Show Descriptions**: Toggle visibility of application descriptions in the list view

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

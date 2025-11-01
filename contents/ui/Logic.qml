import QtQuick
import org.kde.plasma.plasma5support as Plasma5Support

Item {
    Plasma5Support.DataSource {
        id: executable
        engine: "executable"
        connectedSources: []
        onNewData: function(source, data) {
            disconnectSource(source)
        }
    }

    function openUrl(url) {
        if (url.toString().endsWith(".desktop")) {
            executable.connectSource("kioclient exec " + url)
        } else {
            executable.connectSource("xdg-open " + url)
        }
    }
    
    function runCommand(cmd) {
        executable.connectSource(cmd)
    }
}

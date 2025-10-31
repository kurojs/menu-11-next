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
        executable.connectSource("xdg-open " + url)
    }
}

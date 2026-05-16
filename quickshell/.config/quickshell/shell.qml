import Quickshell.Wayland
import Quickshell.Hyprland      /* IPC access */
import Quickshell
import QtQuick
import QtQuick.Layouts          /* RowLayout */

PanelWindow {
  anchors.top: true
  anchors.left: true
  anchors.right: true
  implicitHeight: 30
  color: "#444444"

  RowLayout {
    anchors.fill: parent
    anchors.margins: 4

    Repeater {
      model: 8
      Text {
        required property int index
        // Hyperland data
        property var ws: Hyprland.workspaces.values.find(w => w.id === (index + 1))
        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

        text: index + 1
        color: isActive ? "#0d9bd7" : (ws ? "#7aa2f7" : "#444b6a")
        font { pixelSize: 14; bold: true }

        // Click to switch workspace
        MouseArea {
          anchors.fill: parent
          onClicked: Hyprland.dispatch("workspace " + (index + 1))
        }
      }

      Item { Layout.fillWidth: true }
    }
  }
}

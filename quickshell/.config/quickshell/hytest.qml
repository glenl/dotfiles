import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Io

FloatingWindow {
  visible: true
  width: 200
  height: 100
  color: "#aaaaaa"

  RowLayout {
    Repeater {
      model: 4

      Text {
        required property int index

        property var ws: Hyprland.workspaces.values.find(w => w.id === (index + 1))
        Component.onCompleted : console.log(ws)
        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

        text: index + 1
        color: "#000000"
        font { pixelSize: 14; bold: true }
      }
    }
  }
}

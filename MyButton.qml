import QtQuick 2.12

Item {
    id: root
    width: 60
    height: 60

    property color colorNormal: "lightblue"
    property color colorHover: "blue"
    property color colorPressed: "darkblue"
    property alias title: text
    property alias area: mouseArea

    Rectangle {
        id: rect
        anchors.fill: parent
        color: root.colorNormal

        Text {
            id: text
            text: ""
            font.bold: true
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: rect.color = root.colorHover
            onExited: rect.color = root.colorNormal
            onPressed: rect.color = root.colorPressed
            onReleased: rect.color = root.colorHover
        }
    }
}

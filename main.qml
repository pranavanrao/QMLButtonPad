import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Button Pad")

    color: "#BFFFF8"

    Column {
        anchors.centerIn: parent
        spacing: 3

        Rectangle {
            width: parent.width
            height: 60
            border.color: "lightblue"
            border.width: 5

            Text {
                id: displayTitle
                text: ""
                font.bold: true
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }

        Row {
            spacing: 3

            MyButton {
                title.text: "7"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "8"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "9"
                area.onPressed: displayTitle.text = title.text
            }
        }

        Row {
            spacing: 3

            MyButton {
                title.text: "4"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "5"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "6"
                area.onPressed: displayTitle.text = title.text
            }
        }

        Row {
            spacing: 3

            MyButton {
                title.text: "1"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "2"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "3"
                area.onPressed: displayTitle.text = title.text
            }
        }

        Row {
            spacing: 3

            Item {width: 60; height: 60}

            MyButton {
                title.text: "0"
                area.onPressed: displayTitle.text = title.text
            }

            MyButton {
                title.text: "x"
                area.onPressed: displayTitle.text = ""
            }
        }
    }
}

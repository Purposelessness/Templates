import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Sample project")

    Text {
        text: "Hello world!"
        anchors.centerIn: parent
    }
    // Image {
    //     source: "qrc:/project/img/sample.jpeg"
    // }
}
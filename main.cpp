#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char** argv) {
  QGuiApplication app{argc, argv};

  const QUrl kSource{QStringLiteral("qrc:/project/qml/main.qml")};
  QQmlApplicationEngine engine;
  engine.load(kSource);

  if (engine.rootObjects().isEmpty()) {
    return -1;
  }

  return QGuiApplication::exec();
}
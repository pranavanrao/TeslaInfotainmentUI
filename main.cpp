#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "system.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    System system;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("system", &system);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

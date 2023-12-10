#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QQuickView view;
    view.setTitle("Hello World");
    view.setSource(url);

    view.show();
    return app.exec();
}

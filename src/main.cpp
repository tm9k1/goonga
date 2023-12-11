#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>

#include "ImageProvider.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QQuickView view;
    QQmlEngine* engine = view.engine();
    engine->addImageProvider(QLatin1String("provider"), new ImageProvider);
    view.setTitle("Goonga Music Player");
    view.setMinimumSize(QSize(300,400));
    view.setColor(QColor(0,0,0));
    view.setSource(url);

    view.show();
    return app.exec();
}

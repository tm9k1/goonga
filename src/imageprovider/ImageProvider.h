#pragma once

#include <QQuickImageProvider>

class ImageProvider: public QQuickImageProvider
{
public:
    ImageProvider(): QQuickImageProvider(QQuickImageProvider::Image)
    {
    }
    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override;
};
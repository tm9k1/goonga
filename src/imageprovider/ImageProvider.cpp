#include "ImageProvider.h"


QImage ImageProvider::requestImage(const QString &id, QSize *size, const QSize &requestedSize) {

    int width = 300;
    int height = 300;
    QImage image = QImage("/home/tm9k1/dev/repos/goonga/goonga/assets/concept.jpg")
                    .scaled(
                        requestedSize.width() > 0 ? requestedSize.width() : width,
                        requestedSize.height() > 0 ? requestedSize.height() : height,
                        Qt::KeepAspectRatio
                    );
    if (size)
        *size = QSize(image.width(), image.height());
    return image;
}

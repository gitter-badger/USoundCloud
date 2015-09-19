TEMPLATE = app
TARGET = USoundCloud

load(ubuntu-click)

QT += qml quick

SOURCES += main.cpp

RESOURCES += USoundCloud.qrc

OTHER_FILES += USoundCloud.apparmor \
               USoundCloud.desktop \
               USoundCloud.png

#specify where the config files are installed to
config_files.path = /USoundCloud
config_files.files += $${OTHER_FILES}
message($$config_files.files)
INSTALLS+=config_files

# Default rules for deployment.
target.path = $${UBUNTU_CLICK_BINARY_PATH}
INSTALLS+=target


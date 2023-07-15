cmake_minimum_required(VERSION 3.18)

project(project VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_PREFIX_PATH "~/Qt/6.5.1/macos/lib/cmake")

find_package(Qt6 COMPONENTS Core Quick Qml Gui REQUIRED)
qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(application
        main.cpp
        )

qt_add_qml_module(application
        URI project
        VERSION 0.01
        RESOURCE_PREFIX "/"
        QML_FILES
            qml/main.qml
        RESOURCES
#            img/sample.jpeg
        )

target_link_libraries(application PRIVATE
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Gui
        Qt${QT_VERSION_MAJOR}::Quick
        Qt${QT_VERSION_MAJOR}::Qml
        )

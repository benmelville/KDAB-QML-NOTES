cmake_minimum_required(VERSION 3.16)

project(KDAB-QML-NOTES VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appKDAB-QML-NOTES
    main.cpp
)

qt_add_qml_module(appKDAB-QML-NOTES
    URI KDAB-QML-NOTES
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES resources/images/jeep-backsplash.jpg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appKDAB-QML-NOTES PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appKDAB-QML-NOTES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appKDAB-QML-NOTES
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appKDAB-QML-NOTES
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

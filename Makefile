#############################################################################
# Makefile for building: YTGM-qt
# Generated by qmake (3.0) (Qt 5.6.1)
# Project:  YTGM-qt.pro
# Template: app
# Command: F:\Qt\5.6.1_MinGW_static\bin\qmake.exe "CONFIG+=qml_debug" -spec win32-g++ "CONFIG+=debug" -o Makefile YTGM-qt.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = F:\Qt\5.6.1_MinGW_static\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: YTGM-qt.pro F:/Qt/5.6.1_MinGW_static/mkspecs/win32-g++/qmake.conf F:/Qt/5.6.1_MinGW_static/mkspecs/features/spec_pre.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/qdevice.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/device_config.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/common/angle.conf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/qconfig.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_bootstrap_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_concurrent.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_concurrent_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_core.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_core_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_dbus.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_dbus_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_gui.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_gui_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_network.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_network_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_opengl.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_opengl_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_openglextensions.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_openglextensions_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_platformsupport_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_printsupport.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_printsupport_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_sql.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_sql_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_testlib.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_testlib_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_widgets.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_widgets_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_xml.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_xml_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_zlib_private.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qgenericbearer.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qico.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qminimal.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qnativewifibearer.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qoffscreen.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qtuiotouchplugin.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qwindows.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_windowsprintersupport.pri \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/qt_functions.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/qt_config.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/qt_config.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/win32-g++/qmake.conf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/spec_post.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/exclusive_builds.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/default_pre.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/default_pre.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/resolve_config.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/exclusive_builds_post.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/default_post.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/qml_debug.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/rtti.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/precompile_header.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/warn_on.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/qt.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/resources.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/moc.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/opengl.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/uic.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/file_copies.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/windows.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/testcase_targets.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/exceptions.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/yacc.prf \
		F:/Qt/5.6.1_MinGW_static/mkspecs/features/lex.prf \
		YTGM-qt.pro \
		F:/Qt/5.6.1_MinGW_static/lib/qtmaind.prl \
		F:/Qt/5.6.1_MinGW_static/lib/Qt5PrintSupport.prl \
		F:/Qt/5.6.1_MinGW_static/lib/Qt5Widgets.prl \
		F:/Qt/5.6.1_MinGW_static/lib/Qt5Gui.prl \
		F:/Qt/5.6.1_MinGW_static/lib/Qt5Network.prl \
		F:/Qt/5.6.1_MinGW_static/lib/Qt5Core.prl \
		F:/Qt/5.6.1_MinGW_static/plugins/printsupport/windowsprintersupport.prl \
		F:/Qt/5.6.1_MinGW_static/plugins/platforms/qwindows.prl \
		F:/Qt/5.6.1_MinGW_static/plugins/imageformats/qico.prl \
		F:/Qt/5.6.1_MinGW_static/plugins/bearer/qgenericbearer.prl \
		F:/Qt/5.6.1_MinGW_static/plugins/bearer/qnativewifibearer.prl
	$(QMAKE) "CONFIG+=qml_debug" -spec win32-g++ "CONFIG+=debug" -o Makefile YTGM-qt.pro
F:/Qt/5.6.1_MinGW_static/mkspecs/features/spec_pre.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/qdevice.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/device_config.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/common/angle.conf:
F:/Qt/5.6.1_MinGW_static/mkspecs/qconfig.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_bootstrap_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_concurrent.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_concurrent_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_core.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_core_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_dbus.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_dbus_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_gui.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_gui_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_network.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_network_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_opengl.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_opengl_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_openglextensions.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_openglextensions_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_platformsupport_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_printsupport.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_printsupport_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_sql.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_sql_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_testlib.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_testlib_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_widgets.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_widgets_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_xml.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_xml_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_lib_zlib_private.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qgenericbearer.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qico.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qminimal.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qnativewifibearer.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qoffscreen.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qtuiotouchplugin.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_qwindows.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/modules/qt_plugin_windowsprintersupport.pri:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/qt_functions.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/qt_config.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/qt_config.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/win32-g++/qmake.conf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/spec_post.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/exclusive_builds.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/default_pre.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/default_pre.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/resolve_config.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/exclusive_builds_post.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/default_post.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/qml_debug.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/rtti.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/precompile_header.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/warn_on.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/qt.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/resources.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/moc.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/opengl.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/uic.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/file_copies.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/win32/windows.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/testcase_targets.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/exceptions.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/yacc.prf:
F:/Qt/5.6.1_MinGW_static/mkspecs/features/lex.prf:
YTGM-qt.pro:
F:/Qt/5.6.1_MinGW_static/lib/qtmaind.prl:
F:/Qt/5.6.1_MinGW_static/lib/Qt5PrintSupport.prl:
F:/Qt/5.6.1_MinGW_static/lib/Qt5Widgets.prl:
F:/Qt/5.6.1_MinGW_static/lib/Qt5Gui.prl:
F:/Qt/5.6.1_MinGW_static/lib/Qt5Network.prl:
F:/Qt/5.6.1_MinGW_static/lib/Qt5Core.prl:
F:/Qt/5.6.1_MinGW_static/plugins/printsupport/windowsprintersupport.prl:
F:/Qt/5.6.1_MinGW_static/plugins/platforms/qwindows.prl:
F:/Qt/5.6.1_MinGW_static/plugins/imageformats/qico.prl:
F:/Qt/5.6.1_MinGW_static/plugins/bearer/qgenericbearer.prl:
F:/Qt/5.6.1_MinGW_static/plugins/bearer/qnativewifibearer.prl:
qmake: FORCE
	@$(QMAKE) "CONFIG+=qml_debug" -spec win32-g++ "CONFIG+=debug" -o Makefile YTGM-qt.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
	-$(DEL_FILE) clean
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) D:\Ytgm-master\ytgm-qt_plugin_import.cpp

D:/Ytgm-master/src/leveldb/libleveldb.a: FORCE

debug-mocclean:
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile

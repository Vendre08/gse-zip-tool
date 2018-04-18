# gse-zip-tool - Gnome Shell Extension Zip Tool

See https://bugzilla.gnome.org/show_bug.cgi?id=778677. The ability to install
or uninstall Gnome Shell extensions was removed from the gnome-tweak-tool
Gnome Shell version 3.26.

Gnome Shell Extension Zip Tool is based, mutatis mutandis, on the code
removed from the tweak tool. The application is provided for use by extension
writers who need to install extensions from zip files and uninstall extensions.

The application provides four toolbuttons:

1. About - Displays an about dialog with the usual about information.

2. Install - toggle button when selected places application in install mode.
   Only a zip file can be selected.  The zip file is examined to insure the
   file contains a Gnome Shell extension.

3. Uninstall - toggle button when selected places application in uninstall
   mode.  When the file chooser is opened the local extension directory
   is displayed. Only a directory with an ampersand in its name can be
   selected for removal.

4. Open - file chooser for selection of the zip file to install or the
   local gnome shell extension's directory to uninstall. When the user opens
   the selected zip file or local extension directory the install or uninstall
   is performed and the user is directed to restart the Gnome Shell session
   (logout/login) to complete the operation.


A Makefile is provided to install the application. Download and install
  the application:
 
1. Clone or download

2. Choose Download ZIP

3. Extract the application files from the zip file.

4. Execute the Makefile in the gse-zip-tool-master directory.


To use the Makefile:

Do NOT run Makefile as root.  The application is installed in the
user's home directory.

1. $ make install - installs the application and support files.
   The Python executable is installed in ~/.local/bin.  The ui file
   is installed in ~/.local/share/gse-zip-tool.  The application
   icon is installed in ~/.local/share/gse-zip-tool.  The
   desktop file org.nls1729.gse-zip-tool.desktop is generated and
   installed in ~/.local/share/applications. The GSE Zip Tool can be
   executed from Show Applications in the Overview.

2. $ make uninstall - uninstalls the application and support files.

This application has been tested on Fedora and Ubuntu with Gnome Shell
version 3.26.
 

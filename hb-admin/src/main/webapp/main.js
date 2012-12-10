Ext.Loader.setPath({
    'Ext.ux.desktop': 'desktop/js',
    MyDesktop: 'desktop'
});

Ext.require('MyDesktop.App');

var myDesktopApp;
Ext.onReady(function () {
    myDesktopApp = new MyDesktop.App();
});
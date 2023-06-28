#include "include/androidmigrate/androidmigrate_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "androidmigrate_plugin.h"

void AndroidmigratePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  androidmigrate::AndroidmigratePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

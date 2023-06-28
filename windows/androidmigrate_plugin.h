#ifndef FLUTTER_PLUGIN_ANDROIDMIGRATE_PLUGIN_H_
#define FLUTTER_PLUGIN_ANDROIDMIGRATE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace androidmigrate {

class AndroidmigratePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AndroidmigratePlugin();

  virtual ~AndroidmigratePlugin();

  // Disallow copy and assign.
  AndroidmigratePlugin(const AndroidmigratePlugin&) = delete;
  AndroidmigratePlugin& operator=(const AndroidmigratePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace androidmigrate

#endif  // FLUTTER_PLUGIN_ANDROIDMIGRATE_PLUGIN_H_

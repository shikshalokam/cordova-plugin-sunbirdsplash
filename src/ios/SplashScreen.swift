    
import Foundation


@objc(SplashScreen) class SplashScreen : CDVPlugin { 


    @objc
    func show(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func hide(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func setContent(_ command: CDVInvokedUrlCommand) {
        //TODO: set this in splash screen
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        let appName = command.arguments[0] as? String 
        let logoUrl = command.arguments[1] as? String 
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func onDeepLink(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func setImportProgress(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func getActions(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK, messageAs: "")
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }

    @objc
    func markImportDone(_ command: CDVInvokedUrlCommand) {
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
        self.commandDelegate.send(pluginResult, callbackId: command.callbackId)
        
    }
}
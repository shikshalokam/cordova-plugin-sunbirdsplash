//
//  Splashscreen.swift
//  Sunbird
//
//  Created by Harish Kumar Gangula on 19/07/21.
//


import Foundation


@objc(SplashScreen) class SplashScreen : CDVPlugin {

    private let preferencesPrefix = "splashscreen"
    private let KEY_LOGO = "app_logo";
    private let KEY_NAME = "app_name";
    private let KEY_IS_FIRST_TIME = "is_first_time";
    
    private let DEFAULT_SPLASHSCREEN_DURATION = 3000;
    private let DEFAULT_FADE_DURATION = 500;

private let preferences = UserDefaults.standard


    fileprivate func setPreferences(key: String, value: Any) {
        preferences.setValue(value, forKey: preferencesPrefix + "-" + key)
    }
    
    fileprivate func getPreferences<T>(key: String, defaultValue: T) -> T {
        return preferences.object(forKey: preferencesPrefix + "-" + key) == nil ? defaultValue : preferences.object(forKey: preferencesPrefix + "-" + key) as! T
    }
    
    fileprivate func clearPreferences() {
        preferences.removeObject(forKey: preferencesPrefix + "-" + KEY_LOGO)
        preferences.removeObject(forKey: preferencesPrefix + "-" + KEY_NAME)
        preferences.removeObject(forKey: preferencesPrefix + "-" + KEY_IS_FIRST_TIME)
        
    }


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
        var pluginResult: CDVPluginResult = CDVPluginResult.init(status: CDVCommandStatus_ERROR)
        let appName = command.arguments[0] as! String
        let logoUrl = command.arguments[1] as! String
        setPreferences(key: KEY_NAME, value: appName)
        setPreferences(key: KEY_LOGO, value: logoUrl)
        // TODO: Need to download logoUrl and set it to view using screeen dimensions
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
    func clearPrefs(_ command: CDVInvokedUrlCommand) {
        clearPreferences()
        let pluginResult = CDVPluginResult.init(status: CDVCommandStatus_OK)
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

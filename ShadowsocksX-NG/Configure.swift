//
//  Notifications.swift
//  ShadowsocksX-NG
//
//  Created by 邱宇舟 on 16/6/7.
//  Copyright © 2016年 qiuyuzhou. All rights reserved.
//

import Foundation

let NOTIFY_SERVER_PROFILES_CHANGED = Notification.Name(rawValue: "NOTIFY_SERVER_PROFILES_CHANGED")
let NOTIFY_ADV_CONF_CHANGED = Notification.Name(rawValue: "NOTIFY_ADV_CONF_CHANGED")
let NOTIFY_ADV_PROXY_CONF_CHANGED = Notification.Name(rawValue: "NOTIFY_ADV_PROXY_CONF_CHANGED")
let NOTIFY_HTTP_CONF_CHANGED = Notification.Name(rawValue: "NOTIFY_HTTP_CONF_CHANGED")
let NOTIFY_INVALIDE_QR = Notification.Name(rawValue: "NOTIFY_INVALIDE_QR")
let NOTIFY_FOUND_SS_URL = Notification.Name(rawValue: "NOTIFY_FOUND_SS_URL")
let NOTIFY_UPDATE_MAINMENU = Notification.Name(rawValue: "NOTIFY_UPDATE_MAINMENU")
let NOTIFY_TOGGLE_RUNNING = Notification.Name(rawValue: "NOTIFY_TOGGLE_RUNNING")

let USERDEFAULTS_AUTO_UPDATE_SUBSCRIBE = "AutoUpdateSubscribe"
let USERDEFAULTS_FASTEST_NODE = "FastestNode"
let USERDEFAULTS_ASCENDING_DELAY = "AscendingDelay"
let USERDEFAULTS_AUTO_CHECK_UPDATE = "AutoCheckUpdate"
let USERDEFAULTS_CONNECT_AT_LAUNCH = "ConnectAtLaunch"
let USERDEFAULTS_ENABLE_SHOW_SPEED = "enable_showSpeed"
let USERDEFAULTS_TCP = "TCP"
let USERDEFAULTS_SHADOWSOCKS_ON = "ShadowsocksOn"
let USERDEFAULTS_LOCAL_HTTP_LISTEN_ADDRESS = "LocalHTTP.ListenAddress"
let USERDEFAULTS_LOCAL_HTTP_LISTEN_PORT = "LocalHTTP.ListenPort"
let USERDEFAULTS_SHADOWSOCKS_RUNNING_MODE = "ShadowsocksRunningMode"
let USERDEFAULTS_LOCAL_SOCKS5_LISTEN_PORT = "LocalSocks5.ListenPort"
let USERDEFAULTS_LOCAL_SOCKS5_LISTEN_ADDRESS = "LocalSocks5.ListenAddress"
let USERDEFAULTS_LOCAL_HTTP_ON = "LocalHTTPOn"
let USERDEFAULTS_PAC_SERVER_LISTEN_ADDRESS = "PacServer.ListenAddress"
let USERDEFAULTS_PAC_SERVER_LISTEN_PORT = "PacServer.ListenPort"
let USERDEFAULTS_LOCAL_SOCKS5_TIMEOUT = "LocalSocks5.Timeout"
let USERDEFAULTS_LOCAL_SOCKS5_ENABLE_UDP_RELAY = "LocalSocks5.EnableUDPRelay"
let USERDEFAULTS_LOCAL_SOCKS5_ENABLE_VERBOSE_MODE = "LocalSocks5.EnableVerboseMode"
let USERDEFAULTS_GFW_LIST_URL = "GFWListURL"
let USERDEFAULTS_ACL_WHITE_LIST_URL = "ACLWhiteListURL"
let USERDEFAULTS_ACL_AUTO_LIST_URL = "ACLAutoListURL"
let USERDEFAULTS_ACL_PROXY_BACK_CHN_URL = "ACLProxyBackCHNURL"
let USERDEFAULTS_AUTO_CONFIGURE_NETWORK_SERVICES = "AutoConfigureNetworkServices"
let USERDEFAULTS_PROXY4_NETWORK_SERVICES = "Proxy4NetworkServices"
let USERDEFAULTS_LOCAL_HTTP_FOLLOW_GLOBAL = "LocalHTTP.FollowGlobal"
let USERDEFAULTS_ACL_FILE_NAME = "ACLFileName"
let USERDEFAULTS_SUBSCRIBES = "Subscribes"
let USERDEFAULTS_ACTIVE_SERVER_PROFILE_ID = "ActiveServerProfileId"
let USERDEFAULTS_SERVER_PROFILES = "ServerProfiles"
let USERDEFAULTS_LOCAL_SOCKS5_LISTEN_PORT_OLD = "LocalSocks5.ListenPort.Old"
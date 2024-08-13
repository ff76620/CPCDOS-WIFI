#ifndef CPCDOS_BI
#define CPCDOS_BI

' Constantes générales du système
Const CPCDOS_VERSION = "2.1"
Const MAX_PATH_LENGTH = 260

' Types de données fondamentaux
Type CPCDOS_HANDLE As Integer
Type CPCDOS_BOOL As Integer
Const CPCDOS_TRUE = 1
Const CPCDOS_FALSE = 0

' Structure pour les informations système
Type CPCDOS_SYSTEM_INFO
    Version As String * 16
    TotalMemory As ULongInt
    FreeMemory As ULongInt
    CPUUsage As Single
    Uptime As ULongInt
End Type

' Déclarations des fonctions système de base
Declare Function CPCDOS_Init() As CPCDOS_BOOL
Declare Sub CPCDOS_Shutdown()
Declare Function CPCDOS_GetSystemInfo(ByRef Info As CPCDOS_SYSTEM_INFO) As CPCDOS_BOOL

' Déclarations des fonctions de gestion de la mémoire
Declare Function CPCDOS_AllocateMemory(Size As ULongInt) As Any Ptr
Declare Sub CPCDOS_FreeMemory(Ptr As Any Ptr)

' Déclarations des fonctions de gestion des fichiers
Declare Function CPCDOS_OpenFile(FileName As String, Mode As Integer) As CPCDOS_HANDLE
Declare Function CPCDOS_ReadFile(Handle As CPCDOS_HANDLE, Buffer As Any Ptr, Size As ULongInt) As ULongInt
Declare Function CPCDOS_WriteFile(Handle As CPCDOS_HANDLE, Buffer As Any Ptr, Size As ULongInt) As ULongInt
Declare Sub CPCDOS_CloseFile(Handle As CPCDOS_HANDLE)

' Déclarations des fonctions réseau de base
Declare Function CPCDOS_InitNetwork() As CPCDOS_BOOL
Declare Sub CPCDOS_ShutdownNetwork()

' Déclarations spécifiques pour le support WiFi
Declare Function CPCDOS_WiFiInit() As CPCDOS_BOOL
Declare Function CPCDOS_WiFiScan(ByRef Networks() As String) As Integer
Declare Function CPCDOS_WiFiConnect(SSID As String, Password As String) As CPCDOS_BOOL
Declare Sub CPCDOS_WiFiDisconnect()
Declare Function CPCDOS_WiFiGetStatus() As Integer

#endif ' CPCDOS_BI
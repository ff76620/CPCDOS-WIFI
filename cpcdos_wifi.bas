
#include once "cpcdos.bi"
#include once "WiFiDriver.bas"

Dim Shared WiFiDriver As WiFiDriver

Function CPCDOS_WiFiInit() As CPCDOS_BOOL
    Dim Result As Integer = WiFiDriver.Initialize()
    If Result = 0 Then
        Return CPCDOS_TRUE
    Else
        Return CPCDOS_FALSE
    End If
End Function

Function CPCDOS_WiFiScan(ByRef Networks() As String) As Integer
    Return WiFiDriver.Scan(Networks)
End Function

Function CPCDOS_WiFiConnect(SSID As String, Password As String) As CPCDOS_BOOL
    ' Note: Pour simplifier, on utilise WPA2 et 802.11n par défaut
    Dim Result As Integer = WiFiDriver.Connect(SSID, Password, 3, 4, 0)
    If Result = 0 Then
        Return CPCDOS_TRUE
    Else
        Return CPCDOS_FALSE
    End If
End Function

Sub CPCDOS_WiFiDisconnect()
    WiFiDriver.Disconnect()
End Sub

Function CPCDOS_WiFiGetStatus() As Integer
    Dim Stats As WiFiStats = WiFiDriver.GetStats()
    ' Retourner un indicateur simple basé sur la force du signal
    Return Stats.SignalStrength
End Function

' Fonction pour envoyer des données via WiFi
Function CPCDOS_WiFiSendData(ByRef Data As UByte Ptr, Length As Integer) As Integer
    Return WiFiDriver.SendPacket(Data, Length)
End Function

' Fonction pour recevoir des données via WiFi
Function CPCDOS_WiFiReceiveData(ByRef Data As UByte Ptr, ByRef Length As Integer) As Integer
    Return WiFiDriver.ReceivePacket(Data, Length)
End Function

' Fonction pour obtenir le dernier message d'erreur WiFi
Function CPCDOS_WiFiGetLastError() As String
    Return WiFiDriver.GetErrorMessage()
End Function
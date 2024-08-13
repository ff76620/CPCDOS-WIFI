
#include once "wifi_protocols.bi"

Function InitializeProtocols() As Integer
    ' Initialiser les protocoles supportés
    ' ...
    Return 0 ' Succès
End Function

Function SetProtocol(Protocol As Integer) As Integer
    ' Configurer le protocole spécifié
    Select Case Protocol
        Case 1 ' 802.11a
            ' Configurer 802.11a
        Case 2 ' 802.11b
            ' Configurer 802.11b
        Case 3 ' 802.11g
            ' Configurer 802.11g
        Case 4 ' 802.11n
            ' Configurer 802.11n
        Case 5 ' 802.11ac
            ' Configurer 802.11ac
        Case Else
            Return -1 ' Protocole non supporté
    End Select
    
    Return 0 ' Succès
End Function
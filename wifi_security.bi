#ifndef WIFI_SECURITY_BI
#define WIFI_SECURITY_BI

Declare Function InitializeSecurity() As Integer
Declare Function SetSecurity(SecurityType As Integer, Password As String) As Integer

#endif ' WIFI_SECURITY_BI
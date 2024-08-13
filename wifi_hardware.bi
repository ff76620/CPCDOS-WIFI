#ifndef WIFI_HARDWARE_BI
#define WIFI_HARDWARE_BI

extern "C" {
    int WiFiHardwareInit();
    int WiFiHardwareConnect(void* config);
    int WiFiHardwareDisconnect();
    int WiFiHardwareScan(char** networks, int max_networks);
    void WiFiHardwareGetStats(void* stats);
    int WiFiHardwareSendPacket(unsigned char* data, int length);
    int WiFiHardwareReceivePacket(unsigned char* data, int* length);
}

#endif // WIFI_HARDWARE_BI
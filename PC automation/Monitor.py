import ctypes
from ctypes import wintypes


# Load the DLL for monitor configuration
user32 = ctypes.WinDLL('user32', use_last_error=True)
dxva2 = ctypes.WinDLL('dxva2', use_last_error=True)

# Define necessary structs and constants
PHYSICAL_MONITOR = ctypes.Structure
class PHYSICAL_MONITOR(ctypes.Structure):
    _fields_ = [("hPhysicalMonitor", wintypes.HANDLE),
                ("szPhysicalMonitorDescription", wintypes.WCHAR * 128)]

# Function prototypes
MONITORENUMPROC = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HMONITOR, wintypes.HDC, ctypes.POINTER(wintypes.RECT), wintypes.LPARAM)
user32.EnumDisplayMonitors.argtypes = [wintypes.HDC, wintypes.LPRECT, MONITORENUMPROC, wintypes.LPARAM]

user32.EnumDisplayMonitors.restype = wintypes.BOOL

dxva2.GetNumberOfPhysicalMonitorsFromHMONITOR.argtypes = [wintypes.HMONITOR, ctypes.POINTER(wintypes.DWORD)]
dxva2.GetNumberOfPhysicalMonitorsFromHMONITOR.restype = wintypes.BOOL

dxva2.GetPhysicalMonitorsFromHMONITOR.argtypes = [wintypes.HMONITOR, wintypes.DWORD, ctypes.POINTER(PHYSICAL_MONITOR)]
dxva2.GetPhysicalMonitorsFromHMONITOR.restype = wintypes.BOOL

dxva2.SetVCPFeature.argtypes = [wintypes.HANDLE, wintypes.BYTE, wintypes.DWORD]
dxva2.SetVCPFeature.restype = wintypes.BOOL

# Enumerate monitors
def enum_monitors():
    def callback(hMonitor, hdcMonitor, lprcMonitor, dwData):
        monitors.append(hMonitor)
        return True
    
    MONITORENUMPROC = ctypes.WINFUNCTYPE(wintypes.BOOL, wintypes.HMONITOR, wintypes.HDC, ctypes.POINTER(wintypes.RECT), wintypes.LPARAM)
    monitors = []
    user32.EnumDisplayMonitors(0, None, MONITORENUMPROC(callback), 0)
    return monitors

# Set a VCP feature on the monitor
def set_vcp_feature(monitor, code, value):
    num_monitors = wintypes.DWORD()
    if not dxva2.GetNumberOfPhysicalMonitorsFromHMONITOR(monitor, ctypes.byref(num_monitors)):
        raise ctypes.WinError(ctypes.get_last_error())

    physical_monitors = (PHYSICAL_MONITOR * num_monitors.value)()
    if not dxva2.GetPhysicalMonitorsFromHMONITOR(monitor, num_monitors.value, physical_monitors):
        raise ctypes.WinError(ctypes.get_last_error())
    
    for phys_monitor in physical_monitors:
        if not dxva2.SetVCPFeature(phys_monitor.hPhysicalMonitor, code, value):
            raise ctypes.WinError(ctypes.get_last_error())
        
    
    # Close monitor handles
    for phys_monitor in physical_monitors:
        dxva2.DestroyPhysicalMonitor(phys_monitor.hPhysicalMonitor)


# Example usage
if __name__ == "__main__":
    monitor = enum_monitors()[0]
    if monitor:
        while True:
            set_vcp_feature(monitor, 0xCA, 1)

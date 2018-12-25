package io.fabric.sdk.android.services.common;

class AdvertisingInfo {
    public final String advertisingId;
    public final boolean limitAdTrackingEnabled;

    AdvertisingInfo(String str, boolean z) {
        this.advertisingId = str;
        this.limitAdTrackingEnabled = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            if (getClass() == obj.getClass()) {
                AdvertisingInfo advertisingInfo = (AdvertisingInfo) obj;
                if (this.limitAdTrackingEnabled != advertisingInfo.limitAdTrackingEnabled) {
                    return false;
                }
                if (this.advertisingId == null) {
                    return advertisingInfo.advertisingId == null;
                } else {
                    if (this.advertisingId.equals(advertisingInfo.advertisingId) == null) {
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.advertisingId != null ? this.advertisingId.hashCode() : 0) * 31) + this.limitAdTrackingEnabled;
    }
}

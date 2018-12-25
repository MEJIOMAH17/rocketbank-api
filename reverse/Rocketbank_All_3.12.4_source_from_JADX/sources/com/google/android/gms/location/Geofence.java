package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.zzasm;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class Builder {
        private String zzOV = null;
        private int zzbjC = 0;
        private long zzbjD = Long.MIN_VALUE;
        private short zzbjE = (short) -1;
        private double zzbjF;
        private double zzbjG;
        private float zzbjH;
        private int zzbjI = 0;
        private int zzbjJ = -1;

        public final Geofence build() {
            if (this.zzOV == null) {
                throw new IllegalArgumentException("Request ID not set.");
            } else if (this.zzbjC == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            } else if ((this.zzbjC & 4) != 0 && this.zzbjJ < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            } else if (this.zzbjD == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            } else if (this.zzbjE == (short) -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            } else if (this.zzbjI >= 0) {
                return new zzasm(this.zzOV, this.zzbjC, (short) 1, this.zzbjF, this.zzbjG, this.zzbjH, this.zzbjD, this.zzbjI, this.zzbjJ);
            } else {
                throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
            }
        }

        public final Builder setCircularRegion(double d, double d2, float f) {
            this.zzbjE = (short) 1;
            this.zzbjF = d;
            this.zzbjG = d2;
            this.zzbjH = f;
            return this;
        }

        public final Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.zzbjD = -1;
                return this;
            }
            this.zzbjD = SystemClock.elapsedRealtime() + j;
            return this;
        }

        public final Builder setLoiteringDelay(int i) {
            this.zzbjJ = i;
            return this;
        }

        public final Builder setNotificationResponsiveness(int i) {
            this.zzbjI = i;
            return this;
        }

        public final Builder setRequestId(String str) {
            this.zzOV = str;
            return this;
        }

        public final Builder setTransitionTypes(int i) {
            this.zzbjC = i;
            return this;
        }
    }

    String getRequestId();
}

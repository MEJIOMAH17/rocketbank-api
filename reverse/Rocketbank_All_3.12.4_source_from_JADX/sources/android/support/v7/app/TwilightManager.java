package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics.Param;

final class TwilightManager {
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    static class TwilightState {
        boolean isNight;
        long nextUpdate;
        long todaySunrise;
        long todaySunset;
        long tomorrowSunrise;
        long yesterdaySunset;

        TwilightState() {
        }
    }

    static TwilightManager getInstance(Context context) {
        if (sInstance == null) {
            context = context.getApplicationContext();
            sInstance = new TwilightManager(context, (LocationManager) context.getSystemService(Param.LOCATION));
        }
        return sInstance;
    }

    private TwilightManager(Context context, LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final boolean isNight() {
        /*
        r25 = this;
        r0 = r25;
        r1 = r0.mTwilightState;
        r2 = r0.mTwilightState;
        r2 = r2.nextUpdate;
        r4 = java.lang.System.currentTimeMillis();
        r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        r2 = 0;
        r3 = 1;
        if (r6 <= 0) goto L_0x0014;
    L_0x0012:
        r4 = r3;
        goto L_0x0015;
    L_0x0014:
        r4 = r2;
    L_0x0015:
        if (r4 == 0) goto L_0x001a;
    L_0x0017:
        r1 = r1.isNight;
        return r1;
    L_0x001a:
        r4 = r0.mContext;
        r5 = "android.permission.ACCESS_COARSE_LOCATION";
        r4 = android.arch.lifecycle.MethodCallsLogger.checkSelfPermission(r4, r5);
        r5 = 0;
        if (r4 != 0) goto L_0x002c;
    L_0x0025:
        r4 = "network";
        r4 = r0.getLastKnownLocationForProvider(r4);
        goto L_0x002d;
    L_0x002c:
        r4 = r5;
    L_0x002d:
        r6 = r0.mContext;
        r7 = "android.permission.ACCESS_FINE_LOCATION";
        r6 = android.arch.lifecycle.MethodCallsLogger.checkSelfPermission(r6, r7);
        if (r6 != 0) goto L_0x003d;
    L_0x0037:
        r5 = "gps";
        r5 = r0.getLastKnownLocationForProvider(r5);
    L_0x003d:
        if (r5 == 0) goto L_0x004e;
    L_0x003f:
        if (r4 == 0) goto L_0x004e;
    L_0x0041:
        r6 = r5.getTime();
        r8 = r4.getTime();
        r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r10 <= 0) goto L_0x0051;
    L_0x004d:
        goto L_0x0050;
    L_0x004e:
        if (r5 == 0) goto L_0x0051;
    L_0x0050:
        r4 = r5;
    L_0x0051:
        if (r4 == 0) goto L_0x00d8;
    L_0x0053:
        r5 = r0.mTwilightState;
        r13 = java.lang.System.currentTimeMillis();
        r15 = android.support.v7.app.ResourcesFlusher.getInstance$4befb248();
        r16 = 86400000; // 0x5265c00 float:7.82218E-36 double:4.2687272E-316;
        r7 = r13 - r16;
        r9 = r4.getLatitude();
        r11 = r4.getLongitude();
        r6 = r15;
        r6.calculateTwilight(r7, r9, r11);
        r11 = r15.sunset;
        r9 = r4.getLatitude();
        r18 = r4.getLongitude();
        r7 = r13;
        r20 = r11;
        r11 = r18;
        r6.calculateTwilight(r7, r9, r11);
        r6 = r15.state;
        if (r6 != r3) goto L_0x0085;
    L_0x0084:
        r2 = r3;
    L_0x0085:
        r11 = r15.sunrise;
        r9 = r15.sunset;
        r7 = r13 + r16;
        r16 = r4.getLatitude();
        r3 = r4.getLongitude();
        r6 = r15;
        r22 = r1;
        r0 = r9;
        r9 = r16;
        r23 = r13;
        r13 = r11;
        r11 = r3;
        r6.calculateTwilight(r7, r9, r11);
        r11 = r15.sunrise;
        r3 = -1;
        r6 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1));
        if (r6 == 0) goto L_0x00c0;
    L_0x00a8:
        r6 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1));
        if (r6 != 0) goto L_0x00ad;
    L_0x00ac:
        goto L_0x00c0;
    L_0x00ad:
        r3 = (r23 > r0 ? 1 : (r23 == r0 ? 0 : -1));
        if (r3 <= 0) goto L_0x00b3;
    L_0x00b1:
        r3 = r11;
        goto L_0x00ba;
    L_0x00b3:
        r3 = (r23 > r13 ? 1 : (r23 == r13 ? 0 : -1));
        if (r3 <= 0) goto L_0x00b9;
    L_0x00b7:
        r3 = r0;
        goto L_0x00ba;
    L_0x00b9:
        r3 = r13;
    L_0x00ba:
        r6 = 60000; // 0xea60 float:8.4078E-41 double:2.9644E-319;
        r8 = r3 + r6;
        goto L_0x00c5;
    L_0x00c0:
        r3 = 43200000; // 0x2932e00 float:2.1626111E-37 double:2.1343636E-316;
        r8 = r23 + r3;
    L_0x00c5:
        r5.isNight = r2;
        r2 = r20;
        r5.yesterdaySunset = r2;
        r5.todaySunrise = r13;
        r5.todaySunset = r0;
        r5.tomorrowSunrise = r11;
        r5.nextUpdate = r8;
        r0 = r22;
        r0 = r0.isNight;
        return r0;
    L_0x00d8:
        r0 = "TwilightManager";
        r1 = "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.";
        android.util.Log.i(r0, r1);
        r0 = java.util.Calendar.getInstance();
        r1 = 11;
        r0 = r0.get(r1);
        r1 = 6;
        if (r0 < r1) goto L_0x00f2;
    L_0x00ec:
        r1 = 22;
        if (r0 < r1) goto L_0x00f1;
    L_0x00f0:
        goto L_0x00f2;
    L_0x00f1:
        return r2;
    L_0x00f2:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.TwilightManager.isNight():boolean");
    }

    private Location getLastKnownLocationForProvider(String str) {
        try {
            if (this.mLocationManager.isProviderEnabled(str)) {
                return this.mLocationManager.getLastKnownLocation(str);
            }
        } catch (String str2) {
            Log.d("TwilightManager", "Failed to get last known location", str2);
        }
        return null;
    }
}

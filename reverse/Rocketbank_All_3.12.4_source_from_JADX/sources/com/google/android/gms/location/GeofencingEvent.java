package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.internal.zzasm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingEvent {
    private final int zzPY;
    private final int zzbjK;
    private final List<Geofence> zzbjL;
    private final Location zzbjM;

    private GeofencingEvent(int i, int i2, List<Geofence> list, Location location) {
        this.zzPY = i;
        this.zzbjK = i2;
        this.zzbjL = list;
        this.zzbjM = location;
    }

    public static GeofencingEvent fromIntent(Intent intent) {
        return intent == null ? null : new GeofencingEvent(intent.getIntExtra("gms_error_code", -1), zzx(intent), zzy(intent), (Location) intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int zzx(android.content.Intent r2) {
        /*
        r0 = "com.google.android.location.intent.extra.transition";
        r1 = -1;
        r2 = r2.getIntExtra(r0, r1);
        if (r2 != r1) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r0 = 1;
        if (r2 == r0) goto L_0x0015;
    L_0x000d:
        r0 = 2;
        if (r2 == r0) goto L_0x0015;
    L_0x0010:
        r0 = 4;
        if (r2 != r0) goto L_0x0014;
    L_0x0013:
        return r2;
    L_0x0014:
        return r1;
    L_0x0015:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.GeofencingEvent.zzx(android.content.Intent):int");
    }

    private static List<Geofence> zzy(Intent intent) {
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arrayList == null) {
            return null;
        }
        List arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(zzasm.zzw((byte[]) it.next()));
        }
        return arrayList2;
    }

    public int getErrorCode() {
        return this.zzPY;
    }

    public int getGeofenceTransition() {
        return this.zzbjK;
    }

    public List<Geofence> getTriggeringGeofences() {
        return this.zzbjL;
    }

    public Location getTriggeringLocation() {
        return this.zzbjM;
    }

    public boolean hasError() {
        return this.zzPY != -1;
    }
}

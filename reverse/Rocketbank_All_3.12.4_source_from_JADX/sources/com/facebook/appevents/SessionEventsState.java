package com.facebook.appevents;

import android.content.Context;
import com.facebook.GraphRequest;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

class SessionEventsState {
    private final int MAX_ACCUMULATED_LOG_EVENTS = 1000;
    private List<AppEvent> accumulatedEvents = new ArrayList();
    private String anonymousAppDeviceGUID;
    private AttributionIdentifiers attributionIdentifiers;
    private List<AppEvent> inFlightEvents = new ArrayList();
    private int numSkippedEventsDueToFullBuffer;

    public SessionEventsState(AttributionIdentifiers attributionIdentifiers, String str) {
        this.attributionIdentifiers = attributionIdentifiers;
        this.anonymousAppDeviceGUID = str;
    }

    public synchronized void addEvent(AppEvent appEvent) {
        if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= 1000) {
            this.numSkippedEventsDueToFullBuffer++;
        } else {
            this.accumulatedEvents.add(appEvent);
        }
    }

    public synchronized int getAccumulatedEventCount() {
        return this.accumulatedEvents.size();
    }

    public synchronized void clearInFlightAndStats(boolean z) {
        if (z) {
            this.accumulatedEvents.addAll(this.inFlightEvents);
        }
        this.inFlightEvents.clear();
        this.numSkippedEventsDueToFullBuffer = false;
    }

    public int populateRequest(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.numSkippedEventsDueToFullBuffer;
            this.inFlightEvents.addAll(this.accumulatedEvents);
            this.accumulatedEvents.clear();
            JSONArray jSONArray = new JSONArray();
            for (AppEvent appEvent : this.inFlightEvents) {
                if (!appEvent.isChecksumValid()) {
                    Utility.logd("Event with invalid checksum: %s", appEvent.toString());
                } else if (z || !appEvent.getIsImplicit()) {
                    jSONArray.put(appEvent.getJSONObject());
                }
            }
            if (jSONArray.length()) {
                populateRequest(graphRequest, context, i, jSONArray, z2);
                return jSONArray.length();
            }
            return null;
        }
    }

    public synchronized List<AppEvent> getEventsToPersist() {
        List<AppEvent> list;
        list = this.accumulatedEvents;
        this.accumulatedEvents = new ArrayList();
        return list;
    }

    public synchronized void accumulatePersistedEvents(List<AppEvent> list) {
        this.accumulatedEvents.addAll(list);
    }

    private void populateRequest(com.facebook.GraphRequest r4, android.content.Context r5, int r6, org.json.JSONArray r7, boolean r8) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r3 = this;
        r0 = com.facebook.internal.AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS;	 Catch:{ JSONException -> 0x0014 }
        r1 = r3.attributionIdentifiers;	 Catch:{ JSONException -> 0x0014 }
        r2 = r3.anonymousAppDeviceGUID;	 Catch:{ JSONException -> 0x0014 }
        r5 = com.facebook.internal.AppEventsLoggerUtility.getJSONObjectForGraphAPICall(r0, r1, r2, r8, r5);	 Catch:{ JSONException -> 0x0014 }
        r8 = r3.numSkippedEventsDueToFullBuffer;	 Catch:{ JSONException -> 0x0014 }
        if (r8 <= 0) goto L_0x0019;	 Catch:{ JSONException -> 0x0014 }
    L_0x000e:
        r8 = "num_skipped_events";	 Catch:{ JSONException -> 0x0014 }
        r5.put(r8, r6);	 Catch:{ JSONException -> 0x0014 }
        goto L_0x0019;
    L_0x0014:
        r5 = new org.json.JSONObject;
        r5.<init>();
    L_0x0019:
        r4.setGraphObject(r5);
        r5 = r4.getParameters();
        if (r5 != 0) goto L_0x0027;
    L_0x0022:
        r5 = new android.os.Bundle;
        r5.<init>();
    L_0x0027:
        r6 = r7.toString();
        if (r6 == 0) goto L_0x0039;
    L_0x002d:
        r7 = "custom_events_file";
        r8 = r3.getStringAsByteArray(r6);
        r5.putByteArray(r7, r8);
        r4.setTag(r6);
    L_0x0039:
        r4.setParameters(r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.SessionEventsState.populateRequest(com.facebook.GraphRequest, android.content.Context, int, org.json.JSONArray, boolean):void");
    }

    private byte[] getStringAsByteArray(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (Exception e) {
            Utility.logd("Encoding exception: ", e);
            return null;
        }
    }
}

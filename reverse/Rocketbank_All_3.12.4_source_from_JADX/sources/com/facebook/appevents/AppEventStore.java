package com.facebook.appevents;

import com.facebook.appevents.internal.AppEventUtility;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

class AppEventStore {
    private static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    private static final String TAG = "com.facebook.appevents.AppEventStore";

    private static class MovedClassObjectInputStream extends ObjectInputStream {
        private static final String ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1";
        private static final String APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1";

        public MovedClassObjectInputStream(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals(ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME)) {
                return ObjectStreamClass.lookup(SerializationProxyV1.class);
            }
            return readClassDescriptor.getName().equals(APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME) ? ObjectStreamClass.lookup(SerializationProxyV1.class) : readClassDescriptor;
        }
    }

    AppEventStore() {
    }

    public static synchronized void persistEvents(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        synchronized (AppEventStore.class) {
            AppEventUtility.assertIsNotMainThread();
            PersistedEvents readAndClearStore = readAndClearStore();
            if (readAndClearStore.containsKey(accessTokenAppIdPair)) {
                readAndClearStore.get(accessTokenAppIdPair).addAll(sessionEventsState.getEventsToPersist());
            } else {
                readAndClearStore.addEvents(accessTokenAppIdPair, sessionEventsState.getEventsToPersist());
            }
            saveEventsToDisk(readAndClearStore);
        }
    }

    public static synchronized void persistEvents(AppEventCollection appEventCollection) {
        synchronized (AppEventStore.class) {
            AppEventUtility.assertIsNotMainThread();
            PersistedEvents readAndClearStore = readAndClearStore();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.keySet()) {
                readAndClearStore.addEvents(accessTokenAppIdPair, appEventCollection.get(accessTokenAppIdPair).getEventsToPersist());
            }
            saveEventsToDisk(readAndClearStore);
        }
    }

    public static synchronized com.facebook.appevents.PersistedEvents readAndClearStore() {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = com.facebook.appevents.AppEventStore.class;
        monitor-enter(r0);
        com.facebook.appevents.internal.AppEventUtility.assertIsNotMainThread();	 Catch:{ all -> 0x0091 }
        r1 = com.facebook.FacebookSdk.getApplicationContext();	 Catch:{ all -> 0x0091 }
        r2 = 0;
        r3 = "AppEventsLogger.persistedevents";	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x003c, all -> 0x003a }
        r3 = r1.openFileInput(r3);	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x003c, all -> 0x003a }
        r4 = new com.facebook.appevents.AppEventStore$MovedClassObjectInputStream;	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x003c, all -> 0x003a }
        r5 = new java.io.BufferedInputStream;	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x003c, all -> 0x003a }
        r5.<init>(r3);	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x003c, all -> 0x003a }
        r4.<init>(r5);	 Catch:{ FileNotFoundException -> 0x0074, Exception -> 0x003c, all -> 0x003a }
        r3 = r4.readObject();	 Catch:{ FileNotFoundException -> 0x0075, Exception -> 0x0038 }
        r3 = (com.facebook.appevents.PersistedEvents) r3;	 Catch:{ FileNotFoundException -> 0x0075, Exception -> 0x0038 }
        com.facebook.internal.Utility.closeQuietly(r4);	 Catch:{ all -> 0x0091 }
        r2 = "AppEventsLogger.persistedevents";	 Catch:{ Exception -> 0x002e }
        r1 = r1.getFileStreamPath(r2);	 Catch:{ Exception -> 0x002e }
        r1.delete();	 Catch:{ Exception -> 0x002e }
        goto L_0x0036;
    L_0x002e:
        r1 = move-exception;
        r2 = TAG;	 Catch:{ all -> 0x0091 }
        r4 = "Got unexpected exception when removing events file: ";	 Catch:{ all -> 0x0091 }
        android.util.Log.w(r2, r4, r1);	 Catch:{ all -> 0x0091 }
    L_0x0036:
        r2 = r3;
        goto L_0x0088;
    L_0x0038:
        r3 = move-exception;
        goto L_0x003e;
    L_0x003a:
        r3 = move-exception;
        goto L_0x005e;
    L_0x003c:
        r3 = move-exception;
        r4 = r2;
    L_0x003e:
        r5 = TAG;	 Catch:{ all -> 0x005b }
        r6 = "Got unexpected exception while reading events: ";	 Catch:{ all -> 0x005b }
        android.util.Log.w(r5, r6, r3);	 Catch:{ all -> 0x005b }
        com.facebook.internal.Utility.closeQuietly(r4);	 Catch:{ all -> 0x0091 }
        r3 = "AppEventsLogger.persistedevents";	 Catch:{ Exception -> 0x0052 }
        r1 = r1.getFileStreamPath(r3);	 Catch:{ Exception -> 0x0052 }
        r1.delete();	 Catch:{ Exception -> 0x0052 }
        goto L_0x0088;
    L_0x0052:
        r1 = move-exception;
        r3 = TAG;	 Catch:{ all -> 0x0091 }
        r4 = "Got unexpected exception when removing events file: ";	 Catch:{ all -> 0x0091 }
    L_0x0057:
        android.util.Log.w(r3, r4, r1);	 Catch:{ all -> 0x0091 }
        goto L_0x0088;	 Catch:{ all -> 0x0091 }
    L_0x005b:
        r2 = move-exception;	 Catch:{ all -> 0x0091 }
        r3 = r2;	 Catch:{ all -> 0x0091 }
        r2 = r4;	 Catch:{ all -> 0x0091 }
    L_0x005e:
        com.facebook.internal.Utility.closeQuietly(r2);	 Catch:{ all -> 0x0091 }
        r2 = "AppEventsLogger.persistedevents";	 Catch:{ Exception -> 0x006b }
        r1 = r1.getFileStreamPath(r2);	 Catch:{ Exception -> 0x006b }
        r1.delete();	 Catch:{ Exception -> 0x006b }
        goto L_0x0073;
    L_0x006b:
        r1 = move-exception;
        r2 = TAG;	 Catch:{ all -> 0x0091 }
        r4 = "Got unexpected exception when removing events file: ";	 Catch:{ all -> 0x0091 }
        android.util.Log.w(r2, r4, r1);	 Catch:{ all -> 0x0091 }
    L_0x0073:
        throw r3;	 Catch:{ all -> 0x0091 }
    L_0x0074:
        r4 = r2;	 Catch:{ all -> 0x0091 }
    L_0x0075:
        com.facebook.internal.Utility.closeQuietly(r4);	 Catch:{ all -> 0x0091 }
        r3 = "AppEventsLogger.persistedevents";	 Catch:{ Exception -> 0x0082 }
        r1 = r1.getFileStreamPath(r3);	 Catch:{ Exception -> 0x0082 }
        r1.delete();	 Catch:{ Exception -> 0x0082 }
        goto L_0x0088;
    L_0x0082:
        r1 = move-exception;
        r3 = TAG;	 Catch:{ all -> 0x0091 }
        r4 = "Got unexpected exception when removing events file: ";	 Catch:{ all -> 0x0091 }
        goto L_0x0057;	 Catch:{ all -> 0x0091 }
    L_0x0088:
        if (r2 != 0) goto L_0x008f;	 Catch:{ all -> 0x0091 }
    L_0x008a:
        r2 = new com.facebook.appevents.PersistedEvents;	 Catch:{ all -> 0x0091 }
        r2.<init>();	 Catch:{ all -> 0x0091 }
    L_0x008f:
        monitor-exit(r0);
        return r2;
    L_0x0091:
        r1 = move-exception;
        monitor-exit(r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventStore.readAndClearStore():com.facebook.appevents.PersistedEvents");
    }

    private static void saveEventsToDisk(com.facebook.appevents.PersistedEvents r6) {
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
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = com.facebook.FacebookSdk.getApplicationContext();
        r1 = 0;
        r2 = new java.io.ObjectOutputStream;	 Catch:{ Exception -> 0x0025 }
        r3 = new java.io.BufferedOutputStream;	 Catch:{ Exception -> 0x0025 }
        r4 = "AppEventsLogger.persistedevents";	 Catch:{ Exception -> 0x0025 }
        r5 = 0;	 Catch:{ Exception -> 0x0025 }
        r4 = r0.openFileOutput(r4, r5);	 Catch:{ Exception -> 0x0025 }
        r3.<init>(r4);	 Catch:{ Exception -> 0x0025 }
        r2.<init>(r3);	 Catch:{ Exception -> 0x0025 }
        r2.writeObject(r6);	 Catch:{ Exception -> 0x0020, all -> 0x001d }
        com.facebook.internal.Utility.closeQuietly(r2);
        return;
    L_0x001d:
        r6 = move-exception;
        r1 = r2;
        goto L_0x003a;
    L_0x0020:
        r6 = move-exception;
        r1 = r2;
        goto L_0x0026;
    L_0x0023:
        r6 = move-exception;
        goto L_0x003a;
    L_0x0025:
        r6 = move-exception;
    L_0x0026:
        r2 = TAG;	 Catch:{ all -> 0x0023 }
        r3 = "Got unexpected exception while persisting events: ";	 Catch:{ all -> 0x0023 }
        android.util.Log.w(r2, r3, r6);	 Catch:{ all -> 0x0023 }
        r6 = "AppEventsLogger.persistedevents";	 Catch:{ Exception -> 0x0036 }
        r6 = r0.getFileStreamPath(r6);	 Catch:{ Exception -> 0x0036 }
        r6.delete();	 Catch:{ Exception -> 0x0036 }
    L_0x0036:
        com.facebook.internal.Utility.closeQuietly(r1);
        return;
    L_0x003a:
        com.facebook.internal.Utility.closeQuietly(r1);
        throw r6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventStore.saveEventsToDisk(com.facebook.appevents.PersistedEvents):void");
    }
}

package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

public final class LocalBroadcastManager {
    private static LocalBroadcastManager mInstance;
    private static final Object mLock = new Object();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap();
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList();
    private final HashMap<BroadcastReceiver, ArrayList<ReceiverRecord>> mReceivers = new HashMap();

    static final class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> arrayList) {
            this.intent = intent;
            this.receivers = arrayList;
        }
    }

    static final class ReceiverRecord {
        boolean broadcasting;
        boolean dead;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder(128);
            stringBuilder.append("Receiver{");
            stringBuilder.append(this.receiver);
            stringBuilder.append(" filter=");
            stringBuilder.append(this.filter);
            if (this.dead) {
                stringBuilder.append(" DEAD");
            }
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            context = mInstance;
        }
        return context;
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) {
            public final void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.access$000(LocalBroadcastManager.this);
                }
            }
        };
    }

    public final void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList arrayList = (ArrayList) this.mReceivers.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList(1);
                this.mReceivers.put(broadcastReceiver, arrayList);
            }
            arrayList.add(receiverRecord);
            for (broadcastReceiver = null; broadcastReceiver < intentFilter.countActions(); broadcastReceiver++) {
                String action = intentFilter.getAction(broadcastReceiver);
                ArrayList arrayList2 = (ArrayList) this.mActions.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(1);
                    this.mActions.put(action, arrayList2);
                }
                arrayList2.add(receiverRecord);
            }
        }
    }

    public final void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList arrayList = (ArrayList) this.mReceivers.remove(broadcastReceiver);
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ReceiverRecord receiverRecord = (ReceiverRecord) arrayList.get(size);
                receiverRecord.dead = true;
                for (int i = 0; i < receiverRecord.filter.countActions(); i++) {
                    String action = receiverRecord.filter.getAction(i);
                    ArrayList arrayList2 = (ArrayList) this.mActions.get(action);
                    if (arrayList2 != null) {
                        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                            ReceiverRecord receiverRecord2 = (ReceiverRecord) arrayList2.get(size2);
                            if (receiverRecord2.receiver == broadcastReceiver) {
                                receiverRecord2.dead = true;
                                arrayList2.remove(size2);
                            }
                        }
                        if (arrayList2.size() <= 0) {
                            this.mActions.remove(action);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean sendBroadcast(android.content.Intent r24) {
        /*
        r23 = this;
        r1 = r23;
        r2 = r24;
        r3 = r1.mReceivers;
        monitor-enter(r3);
        r11 = r24.getAction();	 Catch:{ all -> 0x015c }
        r4 = r1.mAppContext;	 Catch:{ all -> 0x015c }
        r4 = r4.getContentResolver();	 Catch:{ all -> 0x015c }
        r12 = r2.resolveTypeIfNeeded(r4);	 Catch:{ all -> 0x015c }
        r13 = r24.getData();	 Catch:{ all -> 0x015c }
        r14 = r24.getScheme();	 Catch:{ all -> 0x015c }
        r15 = r24.getCategories();	 Catch:{ all -> 0x015c }
        r4 = r24.getFlags();	 Catch:{ all -> 0x015c }
        r4 = r4 & 8;
        if (r4 == 0) goto L_0x002c;
    L_0x0029:
        r16 = 1;
        goto L_0x002e;
    L_0x002c:
        r16 = 0;
    L_0x002e:
        if (r16 == 0) goto L_0x0053;
    L_0x0030:
        r4 = "LocalBroadcastManager";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x015c }
        r6 = "Resolving type ";
        r5.<init>(r6);	 Catch:{ all -> 0x015c }
        r5.append(r12);	 Catch:{ all -> 0x015c }
        r6 = " scheme ";
        r5.append(r6);	 Catch:{ all -> 0x015c }
        r5.append(r14);	 Catch:{ all -> 0x015c }
        r6 = " of intent ";
        r5.append(r6);	 Catch:{ all -> 0x015c }
        r5.append(r2);	 Catch:{ all -> 0x015c }
        r5 = r5.toString();	 Catch:{ all -> 0x015c }
        android.util.Log.v(r4, r5);	 Catch:{ all -> 0x015c }
    L_0x0053:
        r4 = r1.mActions;	 Catch:{ all -> 0x015c }
        r5 = r24.getAction();	 Catch:{ all -> 0x015c }
        r4 = r4.get(r5);	 Catch:{ all -> 0x015c }
        r8 = r4;
        r8 = (java.util.ArrayList) r8;	 Catch:{ all -> 0x015c }
        if (r8 == 0) goto L_0x0159;
    L_0x0062:
        if (r16 == 0) goto L_0x0073;
    L_0x0064:
        r4 = "LocalBroadcastManager";
        r5 = "Action list: ";
        r6 = java.lang.String.valueOf(r8);	 Catch:{ all -> 0x015c }
        r5 = r5.concat(r6);	 Catch:{ all -> 0x015c }
        android.util.Log.v(r4, r5);	 Catch:{ all -> 0x015c }
    L_0x0073:
        r4 = 0;
        r6 = r4;
        r7 = 0;
    L_0x0076:
        r4 = r8.size();	 Catch:{ all -> 0x015c }
        if (r7 >= r4) goto L_0x0129;
    L_0x007c:
        r4 = r8.get(r7);	 Catch:{ all -> 0x015c }
        r5 = r4;
        r5 = (android.support.v4.content.LocalBroadcastManager.ReceiverRecord) r5;	 Catch:{ all -> 0x015c }
        if (r16 == 0) goto L_0x009a;
    L_0x0085:
        r4 = "LocalBroadcastManager";
        r9 = new java.lang.StringBuilder;	 Catch:{ all -> 0x015c }
        r10 = "Matching against filter ";
        r9.<init>(r10);	 Catch:{ all -> 0x015c }
        r10 = r5.filter;	 Catch:{ all -> 0x015c }
        r9.append(r10);	 Catch:{ all -> 0x015c }
        r9 = r9.toString();	 Catch:{ all -> 0x015c }
        android.util.Log.v(r4, r9);	 Catch:{ all -> 0x015c }
    L_0x009a:
        r4 = r5.broadcasting;	 Catch:{ all -> 0x015c }
        if (r4 == 0) goto L_0x00b5;
    L_0x009e:
        if (r16 == 0) goto L_0x00a7;
    L_0x00a0:
        r4 = "LocalBroadcastManager";
        r5 = "  Filter's target already added";
        android.util.Log.v(r4, r5);	 Catch:{ all -> 0x015c }
    L_0x00a7:
        r18 = r7;
        r19 = r8;
        r17 = r11;
        r20 = r12;
        r21 = r13;
        r13 = 1;
        r11 = r6;
        goto L_0x011c;
    L_0x00b5:
        r4 = r5.filter;	 Catch:{ all -> 0x015c }
        r10 = "LocalBroadcastManager";
        r9 = r5;
        r5 = r11;
        r17 = r11;
        r11 = r6;
        r6 = r12;
        r18 = r7;
        r7 = r14;
        r19 = r8;
        r8 = r13;
        r20 = r12;
        r21 = r13;
        r13 = 1;
        r12 = r9;
        r9 = r15;
        r4 = r4.match(r5, r6, r7, r8, r9, r10);	 Catch:{ all -> 0x015c }
        if (r4 < 0) goto L_0x00fa;
    L_0x00d2:
        if (r16 == 0) goto L_0x00eb;
    L_0x00d4:
        r5 = "LocalBroadcastManager";
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x015c }
        r7 = "  Filter matched!  match=0x";
        r6.<init>(r7);	 Catch:{ all -> 0x015c }
        r4 = java.lang.Integer.toHexString(r4);	 Catch:{ all -> 0x015c }
        r6.append(r4);	 Catch:{ all -> 0x015c }
        r4 = r6.toString();	 Catch:{ all -> 0x015c }
        android.util.Log.v(r5, r4);	 Catch:{ all -> 0x015c }
    L_0x00eb:
        if (r11 != 0) goto L_0x00f3;
    L_0x00ed:
        r6 = new java.util.ArrayList;	 Catch:{ all -> 0x015c }
        r6.<init>();	 Catch:{ all -> 0x015c }
        goto L_0x00f4;
    L_0x00f3:
        r6 = r11;
    L_0x00f4:
        r6.add(r12);	 Catch:{ all -> 0x015c }
        r12.broadcasting = r13;	 Catch:{ all -> 0x015c }
        goto L_0x011d;
    L_0x00fa:
        if (r16 == 0) goto L_0x011c;
    L_0x00fc:
        switch(r4) {
            case -4: goto L_0x010b;
            case -3: goto L_0x0108;
            case -2: goto L_0x0105;
            case -1: goto L_0x0102;
            default: goto L_0x00ff;
        };	 Catch:{ all -> 0x015c }
    L_0x00ff:
        r4 = "unknown reason";
        goto L_0x010d;
    L_0x0102:
        r4 = "type";
        goto L_0x010d;
    L_0x0105:
        r4 = "data";
        goto L_0x010d;
    L_0x0108:
        r4 = "action";
        goto L_0x010d;
    L_0x010b:
        r4 = "category";
    L_0x010d:
        r5 = "LocalBroadcastManager";
        r6 = "  Filter did not match: ";
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x015c }
        r4 = r6.concat(r4);	 Catch:{ all -> 0x015c }
        android.util.Log.v(r5, r4);	 Catch:{ all -> 0x015c }
    L_0x011c:
        r6 = r11;
    L_0x011d:
        r7 = r18 + 1;
        r11 = r17;
        r8 = r19;
        r12 = r20;
        r13 = r21;
        goto L_0x0076;
    L_0x0129:
        r11 = r6;
        r13 = 1;
        if (r11 == 0) goto L_0x0159;
    L_0x012d:
        r4 = 0;
    L_0x012e:
        r5 = r11.size();	 Catch:{ all -> 0x015c }
        if (r4 >= r5) goto L_0x0140;
    L_0x0134:
        r5 = r11.get(r4);	 Catch:{ all -> 0x015c }
        r5 = (android.support.v4.content.LocalBroadcastManager.ReceiverRecord) r5;	 Catch:{ all -> 0x015c }
        r6 = 0;
        r5.broadcasting = r6;	 Catch:{ all -> 0x015c }
        r4 = r4 + 1;
        goto L_0x012e;
    L_0x0140:
        r4 = r1.mPendingBroadcasts;	 Catch:{ all -> 0x015c }
        r5 = new android.support.v4.content.LocalBroadcastManager$BroadcastRecord;	 Catch:{ all -> 0x015c }
        r5.<init>(r2, r11);	 Catch:{ all -> 0x015c }
        r4.add(r5);	 Catch:{ all -> 0x015c }
        r2 = r1.mHandler;	 Catch:{ all -> 0x015c }
        r2 = r2.hasMessages(r13);	 Catch:{ all -> 0x015c }
        if (r2 != 0) goto L_0x0157;
    L_0x0152:
        r2 = r1.mHandler;	 Catch:{ all -> 0x015c }
        r2.sendEmptyMessage(r13);	 Catch:{ all -> 0x015c }
    L_0x0157:
        monitor-exit(r3);	 Catch:{ all -> 0x015c }
        return r13;
    L_0x0159:
        r6 = 0;
        monitor-exit(r3);	 Catch:{ all -> 0x015c }
        return r6;
    L_0x015c:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r3);	 Catch:{ all -> 0x015c }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.LocalBroadcastManager.sendBroadcast(android.content.Intent):boolean");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void access$000(android.support.v4.content.LocalBroadcastManager r9) {
        /*
    L_0x0000:
        r0 = r9.mReceivers;
        monitor-enter(r0);
        r1 = r9.mPendingBroadcasts;	 Catch:{ all -> 0x0045 }
        r1 = r1.size();	 Catch:{ all -> 0x0045 }
        if (r1 > 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r0);	 Catch:{ all -> 0x0045 }
        return;
    L_0x000d:
        r1 = new android.support.v4.content.LocalBroadcastManager.BroadcastRecord[r1];	 Catch:{ all -> 0x0045 }
        r2 = r9.mPendingBroadcasts;	 Catch:{ all -> 0x0045 }
        r2.toArray(r1);	 Catch:{ all -> 0x0045 }
        r2 = r9.mPendingBroadcasts;	 Catch:{ all -> 0x0045 }
        r2.clear();	 Catch:{ all -> 0x0045 }
        monitor-exit(r0);	 Catch:{ all -> 0x0045 }
        r0 = 0;
        r2 = r0;
    L_0x001c:
        r3 = r1.length;
        if (r2 >= r3) goto L_0x0000;
    L_0x001f:
        r3 = r1[r2];
        r4 = r3.receivers;
        r4 = r4.size();
        r5 = r0;
    L_0x0028:
        if (r5 >= r4) goto L_0x0042;
    L_0x002a:
        r6 = r3.receivers;
        r6 = r6.get(r5);
        r6 = (android.support.v4.content.LocalBroadcastManager.ReceiverRecord) r6;
        r7 = r6.dead;
        if (r7 != 0) goto L_0x003f;
    L_0x0036:
        r6 = r6.receiver;
        r7 = r9.mAppContext;
        r8 = r3.intent;
        r6.onReceive(r7, r8);
    L_0x003f:
        r5 = r5 + 1;
        goto L_0x0028;
    L_0x0042:
        r2 = r2 + 1;
        goto L_0x001c;
    L_0x0045:
        r9 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0045 }
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.LocalBroadcastManager.access$000(android.support.v4.content.LocalBroadcastManager):void");
    }
}

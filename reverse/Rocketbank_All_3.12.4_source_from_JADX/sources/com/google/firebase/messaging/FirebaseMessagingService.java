package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.iid.zzb;
import com.google.firebase.iid.zzg;
import java.util.Iterator;

public class FirebaseMessagingService extends zzb {
    static void zzD(Bundle bundle) {
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    private void zzI(android.content.Intent r3) {
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
        r2 = this;
        r0 = "pending_intent";
        r0 = r3.getParcelableExtra(r0);
        r0 = (android.app.PendingIntent) r0;
        if (r0 == 0) goto L_0x0015;
    L_0x000a:
        r0.send();	 Catch:{ CanceledException -> 0x000e }
        goto L_0x0015;
    L_0x000e:
        r0 = "FirebaseMessaging";
        r1 = "Notification pending intent canceled";
        android.util.Log.e(r0, r1);
    L_0x0015:
        r0 = r3.getExtras();
        r0 = zzZ(r0);
        if (r0 == 0) goto L_0x0022;
    L_0x001f:
        com.google.firebase.messaging.zzd.zzj(r2, r3);
    L_0x0022:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.zzI(android.content.Intent):void");
    }

    private void zzJ(Intent intent) {
        String stringExtra = intent.getStringExtra("message_type");
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        Object obj = -1;
        int hashCode = stringExtra.hashCode();
        if (hashCode != -2062414158) {
            if (hashCode != 102161) {
                if (hashCode != 814694033) {
                    if (hashCode == 814800675) {
                        if (stringExtra.equals("send_event")) {
                            obj = 2;
                        }
                    }
                } else if (stringExtra.equals("send_error")) {
                    obj = 3;
                }
            } else if (stringExtra.equals("gcm")) {
                obj = null;
            }
        } else if (stringExtra.equals("deleted_messages")) {
            obj = 1;
        }
        switch (obj) {
            case null:
                if (zzZ(intent.getExtras())) {
                    zzd.zzi(this, intent);
                }
                zzl(intent);
                return;
            case 1:
                onDeletedMessages();
                return;
            case 2:
                onMessageSent(intent.getStringExtra("google.message_id"));
                return;
            case 3:
                onSendError(zzm(intent), new SendException(intent.getStringExtra("error")));
                return;
            default:
                String str = "FirebaseMessaging";
                String str2 = "Received message with unknown type: ";
                stringExtra = String.valueOf(stringExtra);
                Log.w(str, stringExtra.length() != 0 ? str2.concat(stringExtra) : new String(str2));
                return;
        }
    }

    static boolean zzZ(Bundle bundle) {
        return bundle == null ? false : AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(bundle.getString("google.c.a.e"));
    }

    private String zzm(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra("message_id") : stringExtra;
    }

    public void handleIntent(Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            action = "";
        }
        Object obj = -1;
        int hashCode = action.hashCode();
        if (hashCode != 75300319) {
            if (hashCode == 366519424) {
                if (action.equals("com.google.android.c2dm.intent.RECEIVE")) {
                    obj = null;
                }
            }
        } else if (action.equals("com.google.firebase.messaging.NOTIFICATION_DISMISS")) {
            obj = 1;
        }
        switch (obj) {
            case null:
                zzJ(intent);
                return;
            case 1:
                if (zzZ(intent.getExtras())) {
                    zzd.zzk(this, intent);
                    return;
                }
                break;
            default:
                action = "FirebaseMessaging";
                String str = "Unknown intent action: ";
                String valueOf = String.valueOf(intent.getAction());
                Log.d(action, valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                break;
        }
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, Exception exception) {
    }

    protected Intent zzD(Intent intent) {
        return zzg.zzabW().zzabY();
    }

    public boolean zzE(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        zzI(intent);
        return true;
    }

    private void zzl(Intent intent) {
        Object obj;
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("android.support.content.wakelockid");
        String str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        String str2 = "gcm.n.e";
        Object string = extras.getString(str2);
        if (string == null) {
            string = extras.getString(str2.replace("gcm.n.", "gcm.notification."));
        }
        if (!str.equals(string)) {
            str = "gcm.n.icon";
            str2 = extras.getString(str);
            if (str2 == null) {
                str2 = extras.getString(str.replace("gcm.n.", "gcm.notification."));
            }
            if (str2 == null) {
                obj = null;
                if (obj != null) {
                    if (!zza.zzcy(this).zzG(extras)) {
                        return;
                    }
                    if (zzZ(extras)) {
                        zzd.zzl(this, intent);
                    }
                }
                onMessageReceived(new RemoteMessage(extras));
            }
        }
        obj = 1;
        if (obj != null) {
            if (!zza.zzcy(this).zzG(extras)) {
                if (zzZ(extras)) {
                    zzd.zzl(this, intent);
                }
            } else {
                return;
            }
        }
        onMessageReceived(new RemoteMessage(extras));
    }
}

package ru.rocketbank.r2d2.firebase;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.media.RingtoneManager;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import de.greenrobot.event.EventBus;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Map;
import java.util.Random;
import kotlin.TypeCastException;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import me.leolin.shortcutbadger.ShortcutBadger;
import okhttp3.OkHttpClient;
import okhttp3.Request.Builder;
import okhttp3.ResponseBody;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.FeedManager.FeedRefreshIsNeeded;
import ru.rocketbank.core.manager.PushManager;
import ru.rocketbank.core.model.PushData;
import ru.rocketbank.core.model.push.Acme;
import ru.rocketbank.core.model.push.WebAuth;
import ru.rocketbank.core.network.adapter.StringDeserializer;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.activities.webauth.Sec3dActivity;
import ru.rocketbank.r2d2.service.SendLocationIntentService;

/* compiled from: RocketFirebaseMessagingService.kt */
public final class RocketFirebaseMessagingService extends FirebaseMessagingService {
    private final String TAG = "FirebaseMsgService";
    public Authorization authorization;
    private final OkHttpClient client = new OkHttpClient();
    public FeedManager feedManager;
    public Gson gson;
    public OperationApi operationApi;
    private final Random random = new Random();

    public final OperationApi getOperationApi() {
        OperationApi operationApi = this.operationApi;
        if (operationApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationApi");
        }
        return operationApi;
    }

    public final void setOperationApi(OperationApi operationApi) {
        Intrinsics.checkParameterIsNotNull(operationApi, "<set-?>");
        this.operationApi = operationApi;
    }

    public final FeedManager getFeedManager() {
        FeedManager feedManager = this.feedManager;
        if (feedManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
        }
        return feedManager;
    }

    public final void setFeedManager(FeedManager feedManager) {
        Intrinsics.checkParameterIsNotNull(feedManager, "<set-?>");
        this.feedManager = feedManager;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final Gson getGson() {
        Gson gson = this.gson;
        if (gson == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gson");
        }
        return gson;
    }

    public final void setGson(Gson gson) {
        Intrinsics.checkParameterIsNotNull(gson, "<set-?>");
        this.gson = gson;
    }

    public final void onCreate() {
        super.onCreate();
        Gson create = new GsonBuilder().registerTypeAdapter(String.class, new StringDeserializer()).create();
        Intrinsics.checkExpressionValueIsNotNull(create, "GsonBuilder().registerTy…gDeserializer()).create()");
        this.gson = create;
        RocketComponent injector = RocketApplication.Companion.getInjector();
        this.operationApi = injector.getOperationApi();
        this.feedManager = injector.getFeedManager();
        this.authorization = injector.getAuthorization();
    }

    public final void onMessageReceived(RemoteMessage remoteMessage) {
        Intrinsics.checkParameterIsNotNull(remoteMessage, "remoteMessage");
        String str = this.TAG;
        StringBuilder stringBuilder = new StringBuilder("From: ");
        stringBuilder.append(remoteMessage.getFrom());
        Log.d(str, stringBuilder.toString());
        Map data = remoteMessage.getData();
        Intrinsics.checkExpressionValueIsNotNull(data, "remoteMessage.data");
        boolean z = true;
        if ((data.isEmpty() ^ 1) != 0) {
            str = this.TAG;
            StringBuilder stringBuilder2 = new StringBuilder("Message data payload: ");
            stringBuilder2.append(remoteMessage.getData());
            Log.d(str, stringBuilder2.toString());
        }
        if (remoteMessage.getData() != null) {
            Acme acme;
            data = remoteMessage.getData();
            PushData pushData = new PushData();
            String str2 = (String) data.get("acme");
            Bitmap bitmap = null;
            if (str2 != null) {
                Gson gson = this.gson;
                if (gson == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gson");
                }
                acme = (Acme) gson.fromJson(str2, Acme.class);
            } else {
                acme = null;
            }
            pushData.setAcme(acme);
            str2 = (String) data.get("alert");
            if (str2 == null) {
                str2 = "";
            }
            pushData.setAlert(str2);
            str2 = (String) data.get("badge");
            int i = -1;
            pushData.setBadge(str2 != null ? Integer.parseInt(str2) : -1);
            pushData.setCategory((String) data.get("category"));
            str2 = (String) data.get("sound");
            if (str2 != null) {
                if (Intrinsics.areEqual(str2, "default")) {
                    str2 = "default_default";
                }
                if (str2 != null) {
                    if (StringsKt.split$default(str2, new String[]{"_"}, false, 0, 6, null).size() != 1) {
                        z = false;
                    }
                }
            }
            pushData.setMuted(z);
            if (!pushData.isMuted()) {
                String str3 = (String) data.get("sound");
                if (str3 != null) {
                    Integer num;
                    if (Intrinsics.areEqual(str3, "default")) {
                        num = null;
                    } else {
                        num = Integer.valueOf(getResources().getIdentifier(str3, "raw", getPackageName()));
                    }
                    if (num != null) {
                        i = num.intValue();
                    }
                }
                pushData.setSound(i);
            }
            pushData.setIconUrl((String) data.get("icon"));
            str = pushData.getIconUrl();
            if (str != null) {
                bitmap = getBitmapClippedCircle(getBitmapFromURL(str));
            }
            pushData.setSourceBitmap(bitmap);
            str = this.TAG;
            stringBuilder = new StringBuilder("Message Notification Body: ");
            stringBuilder.append(remoteMessage.getData());
            Log.d(str, stringBuilder.toString());
            try {
                handleEvent(pushData);
            } catch (RemoteMessage remoteMessage2) {
                Log.e(this.TAG, "Exception: ", remoteMessage2);
            }
        }
        RocketApplication.Companion.getInjector().getWidgetManager().updateWidgetData();
    }

    private final Bitmap getBitmapFromURL(String str) {
        Throwable th;
        Throwable th2;
        try {
            Closeable byteStream = loadBmp(str).byteStream();
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream((InputStream) byteStream);
                Log.v(this.TAG, "load bitmap ok");
                CloseableKt.closeFinally(byteStream, null);
                return decodeStream;
            } catch (Throwable th22) {
                Throwable th3 = th22;
                th22 = th;
                th = th3;
            }
            CloseableKt.closeFinally(byteStream, th22);
            throw th;
        } catch (String str2) {
            AnalyticsManager.logException(str2);
            return null;
        }
    }

    private final ResponseBody loadBmp(String str) {
        str = this.client.newCall(new Builder().url(str).build()).execute().body();
        if (str == null) {
            Intrinsics.throwNpe();
        }
        return str;
    }

    private final void sendNotification(String str) {
        Context context = this;
        Intent intent = new Intent(context, StartupActivity.class);
        intent.addFlags(67108864);
        str = new NotificationCompat.Builder(context).setSmallIcon(C0859R.drawable.ic_rocketbank).setContentTitle("FCM Message").setContentText(str).setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(PendingIntent.getActivity(context, 0, intent, 1073741824));
        Object systemService = getSystemService("notification");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
        }
        ((NotificationManager) systemService).notify(0, str.build());
    }

    private final void handleEvent(PushData pushData) {
        String str = this.TAG;
        StringBuilder stringBuilder = new StringBuilder("Badge: ");
        stringBuilder.append(pushData.getBadge());
        Log.v(str, stringBuilder.toString());
        Acme acme = pushData.getAcme();
        setBadge(pushData.getBadge());
        String alert;
        int hashCode;
        if (pushData.getSound() < 0 || acme != null) {
            String string;
            if ((acme != null ? acme.getA() : null) == null) {
                PushManager pushManager = PushManager.instance;
                boolean isMuted = pushData.isMuted() ^ 1;
                int nextInt = r0.random.nextInt();
                alert = pushData.getAlert();
                string = getString(C0859R.string.rocketbank);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.rocketbank)");
                pushManager.showPlain(isMuted, nextInt, alert, string, StartupActivity.class, pushData.getSound());
                return;
            }
            Authorization authorization;
            String a = acme.getA();
            int i = 0;
            if (a != null) {
                hashCode = a.hashCode();
                if (hashCode != 106) {
                    FeedManager feedManager;
                    if (hashCode != 111) {
                        if (hashCode != 116) {
                            if (hashCode == 119) {
                                if (a.equals("w")) {
                                    WebAuth webAuth = acme.getWebAuth();
                                    if (webAuth != null) {
                                        PendingIntent pendingIntent = Sec3dActivity.Companion.pendingIntent(r0, webAuth.getAuthId(), webAuth.getOccuredAt(), webAuth.getTtl(), pushData.getAlert(), pushData.getIconUrl());
                                        PushManager pushManager2 = PushManager.instance;
                                        int id = (int) acme.getId();
                                        String alert2 = pushData.getAlert();
                                        String string2 = getString(C0859R.string.sec3d);
                                        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.sec3d)");
                                        pushManager2.showWebAuth(id, alert2, string2, pendingIntent, pushData.getSourceBitmap());
                                        feedManager = r0.feedManager;
                                        if (feedManager == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
                                        }
                                        feedManager.refresh();
                                        EventBus.getDefault().post(new FeedRefreshIsNeeded());
                                    }
                                    return;
                                }
                            }
                        } else if (a.equals("t")) {
                            PushManager.instance.showMessage(pushData.isMuted() ^ 1, pushData.getAlert(), StartupActivity.class, pushData.getSound());
                            authorization = r0.authorization;
                            if (authorization == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("authorization");
                            }
                            if (authorization.isAuthorized()) {
                                authorization = r0.authorization;
                                if (authorization == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("authorization");
                                }
                                authorization.refreshBackgroundProfile();
                            }
                            EventBus.getDefault().post(new FeedRefreshIsNeeded());
                            return;
                        }
                    } else if (a.equals("o")) {
                        SendLocationIntentService.Companion.startActionLocation(r0, acme.getId());
                        PushManager.instance.showOperation(pushData.isMuted() ^ 1, pushData.getAlert(), StartupActivity.class, pushData.getSound(), pushData.getSourceBitmap());
                        feedManager = r0.feedManager;
                        if (feedManager == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("feedManager");
                        }
                        feedManager.refresh();
                        EventBus.getDefault().post(new FeedRefreshIsNeeded());
                        return;
                    }
                } else if (a.equals("j")) {
                    PushManager pushManager3 = PushManager.instance;
                    boolean isMuted2 = pushData.isMuted() ^ 1;
                    acme = pushData.getAcme();
                    if (acme != null) {
                        i = (int) acme.getId();
                    }
                    int i2 = i;
                    string = pushData.getAlert();
                    String string3 = getString(C0859R.string.joint_analytics);
                    Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.joint_analytics)");
                    pushManager3.showPlain(isMuted2, i2, string, string3, StartupActivity.class, pushData.getSound());
                    authorization = r0.authorization;
                    if (authorization == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("authorization");
                    }
                    if (authorization.isAuthorized()) {
                        authorization = r0.authorization;
                        if (authorization == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("authorization");
                        }
                        authorization.refreshBackgroundProfile();
                        return;
                    }
                    return;
                }
            }
            PushManager pushManager4 = PushManager.instance;
            boolean isMuted3 = pushData.isMuted() ^ 1;
            Acme acme2 = pushData.getAcme();
            if (acme2 != null) {
                i = (int) acme2.getId();
            }
            hashCode = i;
            String alert3 = pushData.getAlert();
            alert = getString(C0859R.string.rocketbank);
            Intrinsics.checkExpressionValueIsNotNull(alert, "getString(R.string.rocketbank)");
            pushManager4.showPlain(isMuted3, hashCode, alert3, alert, StartupActivity.class, pushData.getSound());
            authorization = r0.authorization;
            if (authorization == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authorization");
            }
            if (authorization.isAuthorized()) {
                authorization = r0.authorization;
                if (authorization == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("authorization");
                }
                authorization.refreshBackgroundProfile();
            }
            return;
        }
        pushManager = PushManager.instance;
        hashCode = r0.random.nextInt();
        alert3 = pushData.getAlert();
        alert = getString(C0859R.string.rocketbank);
        Intrinsics.checkExpressionValueIsNotNull(alert, "getString(R.string.rocketbank)");
        pushManager.showSound(hashCode, alert3, alert, StartupActivity.class, pushData.getSound());
    }

    private final Bitmap getBitmapClippedCircle(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Path path = new Path();
        height /= 2;
        path.addCircle((float) (width / 2), (float) height, (float) Math.min(width, height), Direction.CCW);
        Canvas canvas = new Canvas(createBitmap);
        canvas.clipPath(path);
        canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, null);
        bitmap.recycle();
        return createBitmap;
    }

    private final void setBadge(int i) {
        if (i >= 0) {
            ShortcutBadger.applyCount(this, i);
        }
    }
}

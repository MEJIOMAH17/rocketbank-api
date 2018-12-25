package ru.rocketbank.core;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import io.realm.Realm;
import io.realm.RealmConfiguration.Builder;
import java.io.UnsupportedEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.model.FeedList;
import ru.rocketbank.core.model.Limit;
import ru.rocketbank.core.model.OperationsResponse.SafeOperationList;
import ru.rocketbank.core.model.message.Attachment;
import ru.rocketbank.core.model.migration.Migration.CityList;
import ru.rocketbank.core.model.migration.Migration.CityList.Deserializer;
import ru.rocketbank.core.network.adapter.FeedDeserializer;
import ru.rocketbank.core.network.adapter.FriendsTypeDeserializer;
import ru.rocketbank.core.network.adapter.LatLngList;
import ru.rocketbank.core.network.adapter.LatLngListDeserializer;
import ru.rocketbank.core.network.adapter.LimitDeserializer;
import ru.rocketbank.core.network.adapter.MessageAttachmentDeserializer;
import ru.rocketbank.core.network.adapter.OperationTypeContextDeserializer;
import ru.rocketbank.core.network.adapter.SafeOperationListDeserializer;
import ru.rocketbank.core.network.image.ImageLoading;
import ru.rocketbank.core.network.model.NanoFeedResult.Feed;
import ru.rocketbank.core.network.model.operation.FriendRequestType;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.core.realm.module.StorageModule;
import ru.rocketbank.core.realm.module.UserModule;

public abstract class BaseRocketApplication extends BaseApplication {
    public static String TAG_APP = "TAG_APP";
    private static BaseRocketApplication context;
    private static RocketComponent rocketComponent;
    private final Gson gson = new GsonBuilder().registerTypeAdapter(new C13271().getType(), new LimitDeserializer()).registerTypeAdapter(SafeOperationList.class, new SafeOperationListDeserializer()).registerTypeAdapter(FeedList.class, new FeedDeserializer()).registerTypeAdapter(Feed.class, new FeedDeserializer()).registerTypeAdapter(CityList.class, new Deserializer()).registerTypeAdapter(FriendRequestType.class, new FriendsTypeDeserializer()).registerTypeAdapter(OperationContextType.class, new OperationTypeContextDeserializer()).registerTypeAdapter(LatLngList.class, new LatLngListDeserializer()).registerTypeAdapter(Attachment.class, new MessageAttachmentDeserializer()).create();
    private SSLContext sslContext;

    /* renamed from: ru.rocketbank.core.BaseRocketApplication$2 */
    class C07812 implements Runnable {
        C07812() {
        }

        public final void run() {
            BaseRocketApplication.this.lockApplication();
        }
    }

    /* renamed from: ru.rocketbank.core.BaseRocketApplication$1 */
    class C13271 extends TypeToken<ArrayList<Limit>> {
        C13271() {
        }
    }

    protected abstract void lockApplication();

    public Gson getGson() {
        return this.gson;
    }

    public static BaseRocketApplication getContext() {
        return context;
    }

    public void onCreate() {
        super.onCreate();
        Realm.init(this);
        ImageLoading.INSTANCE.initialize(this);
        FacebookSdk.sdkInitialize(getApplicationContext());
        AppEventsLogger.activateApp((Application) this);
        context = this;
    }

    public void needLockApplication() {
        new Handler(Looper.getMainLooper()).post(new C07812());
    }

    public SSLContext getSslContext() {
        if (this.sslContext != null) {
            return this.sslContext;
        }
        return this.sslContext;
    }

    protected void setRocketComponent(RocketComponent rocketComponent) {
        rocketComponent = rocketComponent;
    }

    public static RocketComponent getRocketComponent() {
        return rocketComponent;
    }

    private void initNetwork() {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            instance.init(null);
            final X509TrustManager x509TrustManager = (X509TrustManager) instance.getTrustManagers()[0];
            TrustManager[] trustManagerArr = new TrustManager[]{new X509TrustManager() {
                public final X509Certificate[] getAcceptedIssuers() {
                    return x509TrustManager.getAcceptedIssuers();
                }

                public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    try {
                        x509TrustManager.checkClientTrusted(x509CertificateArr, str);
                    } catch (X509Certificate[] x509CertificateArr2) {
                        x509CertificateArr2.printStackTrace();
                    }
                }

                public final void checkServerTrusted(java.security.cert.X509Certificate[] r2, java.lang.String r3) {
                    /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                    /*
                    r1 = this;
                    r0 = r0;	 Catch:{ CertificateExpiredException -> 0x000b, CertificateException -> 0x0006 }
                    r0.checkServerTrusted(r2, r3);	 Catch:{ CertificateExpiredException -> 0x000b, CertificateException -> 0x0006 }
                    return;
                L_0x0006:
                    r2 = move-exception;
                    r2.printStackTrace();
                    return;
                L_0x000b:
                    return;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.BaseRocketApplication.3.checkServerTrusted(java.security.cert.X509Certificate[], java.lang.String):void");
                }
            }};
            KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm()).init(null, "keystore_pass".toCharArray());
            SSLContext instance2 = SSLContext.getInstance("TLS");
            instance2.init(null, trustManagerArr, null);
            HttpsURLConnection.setDefaultSSLSocketFactory(instance2.getSocketFactory());
            this.sslContext = instance2;
        } catch (Throwable th) {
            Log.e(TAG_APP, "Init: ", th);
        }
    }

    protected void initRealm() throws UnsupportedEncodingException {
        Realm.setDefaultConfiguration(new Builder().name("store.realm").encryptionKey(getKey()).schemaVersion(45).modules(new StorageModule(), new UserModule()).deleteRealmIfMigrationNeeded().build());
        Realm.getDefaultInstance().close();
    }

    public void onLowMemory() {
        Glide.with((Context) this).onLowMemory();
        super.onLowMemory();
    }

    public byte[] getKey() throws UnsupportedEncodingException {
        return "qY74xNHAniHWFTyixfyPRkJc3DQIg1VYvpfRD0OZkPmrw3mNGSotO8JvvnS2tvBb".getBytes("UTF-8");
    }
}

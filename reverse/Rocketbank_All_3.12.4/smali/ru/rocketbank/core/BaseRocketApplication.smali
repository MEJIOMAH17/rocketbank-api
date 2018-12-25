.class public abstract Lru/rocketbank/core/BaseRocketApplication;
.super Lru/rocketbank/core/BaseApplication;
.source "BaseRocketApplication.java"


# static fields
.field public static TAG_APP:Ljava/lang/String; = "TAG_APP"

.field private static context:Lru/rocketbank/core/BaseRocketApplication;

.field private static rocketComponent:Lru/rocketbank/core/dagger/component/RocketComponent;


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Lru/rocketbank/core/BaseApplication;-><init>()V

    .line 68
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lru/rocketbank/core/BaseRocketApplication$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/BaseRocketApplication$1;-><init>(Lru/rocketbank/core/BaseRocketApplication;)V

    .line 69
    invoke-virtual {v1}, Lru/rocketbank/core/BaseRocketApplication$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lru/rocketbank/core/network/adapter/LimitDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/LimitDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/model/OperationsResponse$SafeOperationList;

    new-instance v2, Lru/rocketbank/core/network/adapter/SafeOperationListDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/SafeOperationListDeserializer;-><init>()V

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/model/FeedList;

    new-instance v2, Lru/rocketbank/core/network/adapter/FeedDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FeedDeserializer;-><init>()V

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/network/model/NanoFeedResult$Feed;

    new-instance v2, Lru/rocketbank/core/network/adapter/FeedDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FeedDeserializer;-><init>()V

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/model/migration/Migration$CityList;

    new-instance v2, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;

    invoke-direct {v2}, Lru/rocketbank/core/model/migration/Migration$CityList$Deserializer;-><init>()V

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    new-instance v2, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/FriendsTypeDeserializer;-><init>()V

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/network/model/operation/OperationContextType;

    new-instance v2, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/OperationTypeContextDeserializer;-><init>()V

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/network/adapter/LatLngList;

    new-instance v2, Lru/rocketbank/core/network/adapter/LatLngListDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/LatLngListDeserializer;-><init>()V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lru/rocketbank/core/model/message/Attachment;

    new-instance v2, Lru/rocketbank/core/network/adapter/MessageAttachmentDeserializer;

    invoke-direct {v2}, Lru/rocketbank/core/network/adapter/MessageAttachmentDeserializer;-><init>()V

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/BaseRocketApplication;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static getContext()Lru/rocketbank/core/BaseRocketApplication;
    .locals 1

    .line 85
    sget-object v0, Lru/rocketbank/core/BaseRocketApplication;->context:Lru/rocketbank/core/BaseRocketApplication;

    return-object v0
.end method

.method public static getRocketComponent()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 1

    .line 132
    sget-object v0, Lru/rocketbank/core/BaseRocketApplication;->rocketComponent:Lru/rocketbank/core/dagger/component/RocketComponent;

    return-object v0
.end method

.method private initNetwork()V
    .locals 5

    .line 140
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 144
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 145
    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    .line 147
    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    new-instance v4, Lru/rocketbank/core/BaseRocketApplication$3;

    invoke-direct {v4, p0, v0}, Lru/rocketbank/core/BaseRocketApplication$3;-><init>(Lru/rocketbank/core/BaseRocketApplication;Ljavax/net/ssl/X509TrustManager;)V

    aput-object v4, v3, v2

    .line 172
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    const-string v2, "keystore_pass"

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    const-string v0, "TLS"

    .line 176
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v1, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 179
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 180
    iput-object v0, p0, Lru/rocketbank/core/BaseRocketApplication;->sslContext:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 187
    sget-object v1, Lru/rocketbank/core/BaseRocketApplication;->TAG_APP:Ljava/lang/String;

    const-string v2, "Init: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "qY74xNHAniHWFTyixfyPRkJc3DQIg1VYvpfRD0OZkPmrw3mNGSotO8JvvnS2tvBb"

    const-string v1, "UTF-8"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 115
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method protected initRealm()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 194
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string v1, "store.realm"

    .line 195
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lru/rocketbank/core/BaseRocketApplication;->getKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x2d

    .line 197
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/realm/module/StorageModule;

    invoke-direct {v1}, Lru/rocketbank/core/realm/module/StorageModule;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lru/rocketbank/core/realm/module/UserModule;

    invoke-direct {v3}, Lru/rocketbank/core/realm/module/UserModule;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 198
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 205
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method protected abstract lockApplication()V
.end method

.method public needLockApplication()V
    .locals 2

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lru/rocketbank/core/BaseRocketApplication$2;

    invoke-direct {v1, p0}, Lru/rocketbank/core/BaseRocketApplication$2;-><init>(Lru/rocketbank/core/BaseRocketApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 90
    invoke-super {p0}, Lru/rocketbank/core/BaseApplication;->onCreate()V

    .line 91
    invoke-static {p0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lru/rocketbank/core/network/image/ImageLoading;->INSTANCE:Lru/rocketbank/core/network/image/ImageLoading;

    invoke-virtual {v0, p0}, Lru/rocketbank/core/network/image/ImageLoading;->initialize(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lru/rocketbank/core/BaseRocketApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 94
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    .line 99
    sput-object p0, Lru/rocketbank/core/BaseRocketApplication;->context:Lru/rocketbank/core/BaseRocketApplication;

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 212
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    .line 214
    invoke-super {p0}, Lru/rocketbank/core/BaseApplication;->onLowMemory()V

    return-void
.end method

.method protected setRocketComponent(Lru/rocketbank/core/dagger/component/RocketComponent;)V
    .locals 0

    .line 128
    sput-object p1, Lru/rocketbank/core/BaseRocketApplication;->rocketComponent:Lru/rocketbank/core/dagger/component/RocketComponent;

    return-void
.end method

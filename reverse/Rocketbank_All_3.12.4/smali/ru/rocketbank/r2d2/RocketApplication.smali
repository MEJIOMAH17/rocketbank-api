.class public Lru/rocketbank/r2d2/RocketApplication;
.super Lru/rocketbank/core/BaseRocketApplication;
.source "RocketApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/RocketApplication$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

.field private static TAG_APP:Ljava/lang/String; = "TAG_APP"

.field public static firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final activityLifecycleCallbacks:Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;

.field private analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

.field private currentActivity:Landroid/app/Activity;

.field private dataManager:Lru/rocketbank/core/manager/DataManager;

.field private rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/RocketApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lru/rocketbank/core/BaseRocketApplication;-><init>()V

    .line 142
    new-instance v0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;-><init>(Lru/rocketbank/r2d2/RocketApplication;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->activityLifecycleCallbacks:Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;

    return-void
.end method

.method public static final synthetic access$getAnalyticsManager$p(Lru/rocketbank/r2d2/RocketApplication;)Lru/rocketbank/core/manager/AnalyticsManager;
    .locals 1

    .line 36
    iget-object p0, p0, Lru/rocketbank/r2d2/RocketApplication;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    if-nez p0, :cond_0

    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lru/rocketbank/r2d2/RocketApplication;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseAnalytics$cp()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2

    .line 36
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    const-string v1, "firebaseAnalytics"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getTAG_APP$cp()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->TAG_APP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setAnalyticsManager$p(Lru/rocketbank/r2d2/RocketApplication;Lru/rocketbank/core/manager/AnalyticsManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/RocketApplication;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    return-void
.end method

.method public static final synthetic access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/rocketbank/r2d2/RocketApplication;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic access$setFirebaseAnalytics$cp(Lcom/google/firebase/analytics/FirebaseAnalytics;)V
    .locals 0

    .line 36
    sput-object p0, Lru/rocketbank/r2d2/RocketApplication;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public static final synthetic access$setTAG_APP$cp(Ljava/lang/String;)V
    .locals 0

    .line 36
    sput-object p0, Lru/rocketbank/r2d2/RocketApplication;->TAG_APP:Ljava/lang/String;

    return-void
.end method

.method public static final getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    return-object v0
.end method

.method private final updateAndroidSecurityProvider(Landroid/content/Context;)V
    .locals 0

    .line 105
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    .line 111
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    .line 108
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected lockApplication()V
    .locals 2

    .line 118
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "lead_status"

    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->dataManager:Lru/rocketbank/core/manager/DataManager;

    if-nez v0, :cond_1

    const-string v1, "dataManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, v0, Lru/rocketbank/core/manager/DataManager;->isResetCodeToken:Z

    if-eqz v0, :cond_2

    return-void

    .line 128
    :cond_2
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/user/Authorization;->setToken(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 131
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/event/LockEvent;

    invoke-direct {v1}, Lru/rocketbank/core/event/LockEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_3
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->TAG_APP:Ljava/lang/String;

    const-string v1, "No activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 43
    invoke-super {p0}, Lru/rocketbank/core/BaseRocketApplication;->onCreate()V

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/RocketApplication;->initRealm()V

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "FirebaseAnalytics.getInstance(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lru/rocketbank/r2d2/RocketApplication;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 55
    invoke-static {}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;->builder()Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;

    move-result-object v1

    .line 56
    new-instance v2, Lru/rocketbank/core/dagger/AndroidModule;

    sget-object v3, Lcom/google/android/gms/tapandpay/TapAndPay;->TapAndPay:Lcom/google/android/gms/tapandpay/TapAndPay;

    const-string v4, "TapAndPay.TapAndPay"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lru/rocketbank/core/dagger/AndroidModule;-><init>(Landroid/content/Context;Lcom/google/android/gms/tapandpay/TapAndPay;)V

    invoke-virtual {v1, v2}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->androidModule(Lru/rocketbank/core/dagger/AndroidModule;)Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->build()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/RocketApplication;->setRocketComponent(Lru/rocketbank/core/dagger/component/RocketComponent;)V

    .line 61
    sget-object v2, Lru/rocketbank/core/user/impl/MigrationToRealm;->INSTANCE:Lru/rocketbank/core/user/impl/MigrationToRealm;

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorizationStorage()Lru/rocketbank/core/user/AuthorizationStorage;

    move-result-object v2

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAppInfoManager()Lru/rocketbank/core/manager/AppInfoManager;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lru/rocketbank/core/user/impl/MigrationToRealm;->migrate(Landroid/content/Context;Lru/rocketbank/core/user/AuthorizationStorage;Lru/rocketbank/core/manager/AppInfoManager;)V

    .line 63
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTouchManager()Lru/rocketbank/core/manager/TouchManager;

    move-result-object v0

    const-string v2, "android.permission.USE_FINGERPRINT"

    .line 64
    invoke-interface {v0, v2}, Lru/rocketbank/core/manager/TouchManager;->setPermission(Ljava/lang/String;)V

    .line 66
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->dataManager:Lru/rocketbank/core/manager/DataManager;

    .line 67
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAnalyticsManager()Lru/rocketbank/core/manager/AnalyticsManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    .line 68
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getRocketShortcutManager()Lru/rocketbank/core/manager/RocketShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->rocketShortcutManager:Lru/rocketbank/core/manager/RocketShortcutManager;

    if-nez v0, :cond_0

    const-string v2, "rocketShortcutManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-class v2, Lru/rocketbank/r2d2/activities/StartupActivity;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/manager/RocketShortcutManager;->setStartupActivity(Ljava/lang/Class;)V

    .line 71
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAppConfig()Lru/rocketbank/core/utils/AppConfig;

    move-result-object v0

    const-string v2, "ru.rocketbank.r2d2"

    invoke-virtual {v0, v2}, Lru/rocketbank/core/utils/AppConfig;->setApplicationId(Ljava/lang/String;)V

    .line 73
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getWidgetManager()Lru/rocketbank/core/manager/WidgetManager;

    move-result-object v0

    new-instance v2, Lru/rocketbank/r2d2/RocketApplication$onCreate$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/RocketApplication$onCreate$1;-><init>(Lru/rocketbank/r2d2/RocketApplication;)V

    check-cast v2, Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {v0, v2}, Lru/rocketbank/core/manager/WidgetManager;->setUpdateListener$4abaf3d4(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 79
    sget-object v0, Lru/rocketbank/core/network/image/ImageLoading;->INSTANCE:Lru/rocketbank/core/network/image/ImageLoading;

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/core/network/image/ImageLoading;->setHeaderManager(Lru/rocketbank/core/manager/HeaderManager;)V

    .line 82
    :try_start_0
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAtmsManager()Lru/rocketbank/core/manager/AtmsManager;

    move-result-object v0

    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/core/manager/AtmsManager;->onCreate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v2, Lru/rocketbank/r2d2/RocketApplication;->TAG_APP:Ljava/lang/String;

    const-string v3, "Open file failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_0
    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAppInfoManager()Lru/rocketbank/core/manager/AppInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/manager/AppInfoManager;->getDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lru/rocketbank/r2d2/RocketApplication;->analyticsManager:Lru/rocketbank/core/manager/AnalyticsManager;

    if-nez v1, :cond_1

    const-string v1, "analyticsManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->setDeviceId(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication;->activityLifecycleCallbacks:Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/RocketApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 91
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled$1385ff()V

    :try_start_1
    const-string v0, "TLS_BEFORE_UPDATE"

    const-string v1, ", "

    .line 94
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const-string v3, "SSLContext.getDefault()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    const-string v3, "SSLContext.getDefault().defaultSSLParameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/AnalyticsManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/RocketApplication;->updateAndroidSecurityProvider(Landroid/content/Context;)V

    const-string v0, "TLS_AFTER_UPDATE"

    const-string v1, ", "

    .line 96
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const-string v3, "SSLContext.getDefault()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    const-string v3, "SSLContext.getDefault().defaultSSLParameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/AnalyticsManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 138
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAtmsManager()Lru/rocketbank/core/manager/AtmsManager;

    invoke-static {}, Lru/rocketbank/core/manager/AtmsManager;->onDestroy()V

    .line 139
    invoke-super {p0}, Lru/rocketbank/core/BaseRocketApplication;->onTerminate()V

    return-void
.end method

.method public final widgetUpdate()V
    .locals 5

    .line 191
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lru/rocketbank/r2d2/widget/RocketWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 192
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 195
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lru/rocketbank/r2d2/widget/RocketWidgetProvider;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const-string v2, "appWidgetIds"

    .line 198
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/RocketApplication;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.class public final Lru/rocketbank/core/manager/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final facebookLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private final hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/rocketbank/core/manager/AppInfoManager;Lcom/facebook/appevents/AppEventsLogger;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->facebookLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 38
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p3

    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const-string v1, "AxLNGenaPftu3fhCNL8y8S"

    invoke-virtual {p3, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog$1385ff()V

    const/4 p3, 0x2

    .line 41
    new-array p3, p3, [Lio/fabric/sdk/android/Kit;

    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v0}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    new-instance v0, Lcom/crashlytics/android/answers/Answers;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/Answers;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p3, v1

    invoke-static {p1, p3}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    const-string p3, "FFS86G84SVVC3WXGZPTZ"

    .line 43
    invoke-static {p1, p3}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lru/rocketbank/core/manager/AppInfoManager;->getDeviceData()Lru/rocketbank/core/realm/DeviceInfoData;

    move-result-object p1

    .line 1017
    invoke-virtual {p1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 2015
    invoke-virtual {p1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$androidId()Ljava/lang/String;

    move-result-object p3

    .line 48
    invoke-static {p3}, Lcom/appsflyer/AppsFlyerLib;->setAndroidIdData(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 2017
    invoke-virtual {p1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p3

    .line 49
    invoke-static {p3}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 50
    iget-object p3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    const-string v0, "deviceId"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    const-string p3, "week"

    .line 3013
    invoke-virtual {p1}, Lru/rocketbank/core/realm/DeviceInfoData;->realmGet$activation()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    new-instance p1, Lru/rocketbank/core/manager/AnalyticsManager$1;

    invoke-direct {p1, p0}, Lru/rocketbank/core/manager/AnalyticsManager$1;-><init>(Lru/rocketbank/core/manager/AnalyticsManager;)V

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListener$815205$bb56743(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/manager/AnalyticsManager;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static cardAddedViaGooglePay()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Google Pay card added"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method

.method public static cardDefaultGooglePay()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Google Pay card default"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method

.method public static cardDeletedFromGooglePay()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Google Pay card deleted"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 0

    .line 253
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "dump"

    .line 219
    invoke-static {v0, p1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logLastActivity(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 229
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "last_activity"

    .line 230
    invoke-static {v0, p0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logLastActivityPaused(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 245
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "last_activity"

    .line 246
    invoke-static {v0, p0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logLastFragment(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 237
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "last_fragment"

    .line 238
    invoke-static {v0, p0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logSignIn(ZZ)V
    .locals 2

    .line 278
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/LoginEvent;

    invoke-direct {v1}, Lcom/crashlytics/android/answers/LoginEvent;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "Touch"

    goto :goto_0

    :cond_0
    const-string p0, "Pin"

    .line 280
    :goto_0
    invoke-virtual {v1, p0}, Lcom/crashlytics/android/answers/LoginEvent;->putMethod(Ljava/lang/String;)Lcom/crashlytics/android/answers/LoginEvent;

    move-result-object p0

    .line 281
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/LoginEvent;->putSuccess(Z)Lcom/crashlytics/android/answers/LoginEvent;

    move-result-object p0

    .line 279
    invoke-virtual {v0, p0}, Lcom/crashlytics/android/answers/Answers;->logLogin(Lcom/crashlytics/android/answers/LoginEvent;)V

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 265
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    const-string v0, "DEVICE_ID"

    .line 266
    invoke-static {v0, p0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 272
    invoke-static {p0, p1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(J)V
    .locals 0

    .line 259
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    return-void
.end method

.method public static stopActivity(Landroid/app/Activity;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final discounts()V
    .locals 4

    const-string v0, "Discounts"

    .line 3213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final invites()V
    .locals 4

    const-string v0, "Invites"

    .line 4213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final invitesFriend()V
    .locals 4

    const-string v0, "Send friend invite"

    .line 5213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final invitesPage()V
    .locals 4

    const-string v0, "Share invite page"

    .line 6213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final leadFormComplete()V
    .locals 4

    const-string v0, "Complete form"

    .line 7213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final leadFormCompleteFacebook()V
    .locals 2

    .line 172
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->facebookLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "Fill form"

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final leadFormFill()V
    .locals 4

    const-string v0, "Fill form"

    .line 8213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final leadPassportFirst()V
    .locals 4

    const-string v0, "First passport photo"

    .line 9213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final leadPassportSecond()V
    .locals 4

    const-string v0, "Second passport photo"

    .line 10213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final logEndFirstRefillFacebook()V
    .locals 3

    .line 184
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FIRST_REFILL"

    const/4 v2, 0x0

    .line 185
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lru/rocketbank/core/manager/AnalyticsManager;->facebookLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "Refill plastic card"

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FIRST_REFILL"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final logStartFirstRefillFacebook()V
    .locals 3

    .line 177
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FIRST_REFILL"

    const/4 v2, 0x1

    .line 179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final loginCode()V
    .locals 4

    const-string v0, "Auth by code"

    .line 11213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final newUserPhoneConfirm()V
    .locals 3

    .line 162
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ENTER_PHONE"

    const/4 v2, 0x0

    .line 163
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lru/rocketbank/core/manager/AnalyticsManager;->facebookLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "Enter phone"

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ENTER_PHONE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final newUserPhoneEnter()V
    .locals 3

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ENTER_PHONE"

    const/4 v2, 0x1

    .line 156
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final noob()V
    .locals 4

    const-string v0, "Noob"

    .line 12213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final phoneConfirm(Ljava/lang/String;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Confirm phone"

    .line 13213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    iget-object p1, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final phoneEnter()V
    .locals 4

    const-string v0, "Enter phone"

    .line 14213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/core/manager/AnalyticsManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lru/rocketbank/core/manager/AnalyticsManager;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.class public final Lru/rocketbank/core/manager/FireCMManager;
.super Ljava/lang/Object;
.source "FireCMManager.java"


# instance fields
.field private authorization:Lru/rocketbank/core/user/Authorization;

.field private handler:Landroid/os/Handler;

.field private headerManager:Lru/rocketbank/core/manager/HeaderManager;

.field private postSendingAction:Ljava/lang/Runnable;

.field private rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/network/api/RocketAPI;Lru/rocketbank/core/manager/HeaderManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->handler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lru/rocketbank/core/manager/FireCMManager$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/FireCMManager$1;-><init>(Lru/rocketbank/core/manager/FireCMManager;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->postSendingAction:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lru/rocketbank/core/manager/FireCMManager;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 43
    iput-object p2, p0, Lru/rocketbank/core/manager/FireCMManager;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    .line 44
    iput-object p3, p0, Lru/rocketbank/core/manager/FireCMManager;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/core/manager/FireCMManager;)Landroid/content/SharedPreferences;
    .locals 0

    .line 24
    iget-object p0, p0, Lru/rocketbank/core/manager/FireCMManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private declared-synchronized getSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v0

    const-string v1, "FireCMManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/BaseRocketApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->sharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p0

    throw v0
.end method

.method private sendUserFcmToken(Ljava/lang/String;)V
    .locals 7

    .line 106
    new-instance v0, Lru/rocketbank/core/model/ValueRequest;

    invoke-direct {v0}, Lru/rocketbank/core/model/ValueRequest;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/ValueRequest;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lru/rocketbank/core/manager/FireCMManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/manager/FireCMManager;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {p1, v0}, Lru/rocketbank/core/network/api/RocketAPI;->sendApnToken(Lru/rocketbank/core/model/ValueRequest;)Lrx/Observable;

    move-result-object p1

    new-instance v6, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Lru/rocketbank/core/manager/FireCMManager$3;

    invoke-direct {v5, p0}, Lru/rocketbank/core/manager/FireCMManager$3;-><init>(Lru/rocketbank/core/manager/FireCMManager;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lru/rocketbank/core/utils/rx/RetryWithDelayAndLimitIf;-><init>(IJLjava/util/concurrent/TimeUnit;Lrx/functions/Func1;)V

    .line 114
    invoke-virtual {p1, v6}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 131
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 132
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lru/rocketbank/core/manager/FireCMManager$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/manager/FireCMManager$2;-><init>(Lru/rocketbank/core/manager/FireCMManager;)V

    .line 133
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public final sendTokenIfNeeded()V
    .locals 4

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/core/manager/FireCMManager;->postSendingAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/core/manager/FireCMManager;->postSendingAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final sendTokenIfNeededExecute()V
    .locals 3

    const-string v0, "FireCMManager"

    const-string v1, "Sening token"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lru/rocketbank/core/manager/FireCMManager;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FIRE_TOKEN_4_U"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FireCMManager"

    const-string v1, "Noting to send"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lru/rocketbank/core/manager/FireCMManager;->authorization:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lru/rocketbank/core/manager/FireCMManager;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    invoke-virtual {v2, v0}, Lru/rocketbank/core/manager/HeaderManager;->setFcmToken(Ljava/lang/String;)V

    const-string v2, "lead_status"

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0, v0}, Lru/rocketbank/core/manager/FireCMManager;->sendUserFcmToken(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lru/rocketbank/core/manager/FireCMManager;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 1065
    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "user_feed"

    invoke-virtual {v1}, Lru/rocketbank/core/user/Authorization;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0, v0}, Lru/rocketbank/core/manager/FireCMManager;->sendUserFcmToken(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final declared-synchronized storeAndSendGcmToken(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "FireCMManager"

    const-string v1, "Get new token "

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lru/rocketbank/core/manager/FireCMManager;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GCM_SENT_LEAD_DEAD"

    const/4 v2, 0x0

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FCM_SENT"

    .line 90
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FIRE_TOKEN_4_U"

    .line 91
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 92
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2055
    iget-object p1, p0, Lru/rocketbank/core/manager/FireCMManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->postSendingAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2056
    iget-object p1, p0, Lru/rocketbank/core/manager/FireCMManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/core/manager/FireCMManager;->postSendingAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

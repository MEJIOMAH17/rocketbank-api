.class public final Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;
.super Lrx/Subscriber;
.source "AtmsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/AtmsManager;->loadFromFile(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $listener:Lru/rocketbank/core/manager/AtmsManager$RecreateListener;

.field final synthetic this$0:Lru/rocketbank/core/manager/AtmsManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/AtmsManager;Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/manager/AtmsManager$RecreateListener;",
            ")V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;->this$0:Lru/rocketbank/core/manager/AtmsManager;

    iput-object p2, p0, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;->$listener:Lru/rocketbank/core/manager/AtmsManager$RecreateListener;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lru/rocketbank/core/manager/AtmsManager;->access$getTAG_ATMS$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading from file has failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .line 73
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1084
    iget-object p1, p0, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;->this$0:Lru/rocketbank/core/manager/AtmsManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/AtmsManager;->access$getContext$p(Lru/rocketbank/core/manager/AtmsManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lru/rocketbank/core/manager/AtmsManager;->access$getATMS_PREF$cp()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1085
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lru/rocketbank/core/manager/AtmsManager;->access$getATMS_UPDATE_TIME$cp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1086
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1087
    iget-object p1, p0, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$2;->$listener:Lru/rocketbank/core/manager/AtmsManager$RecreateListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lru/rocketbank/core/manager/AtmsManager$RecreateListener;->onRealmRecreated()V

    return-void

    :cond_0
    return-void
.end method

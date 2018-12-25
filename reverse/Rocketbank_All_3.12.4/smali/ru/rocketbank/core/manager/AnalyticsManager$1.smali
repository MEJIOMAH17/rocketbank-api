.class final Lru/rocketbank/core/manager/AnalyticsManager$1;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/AnalyticsManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/manager/AppInfoManager;Lcom/facebook/appevents/AppEventsLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/AnalyticsManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/AnalyticsManager;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lru/rocketbank/core/manager/AnalyticsManager$1;->this$0:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallConversionDataLoaded(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "campaign"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lru/rocketbank/core/manager/AnalyticsManager$1;->this$0:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-static {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->access$000(Lru/rocketbank/core/manager/AnalyticsManager;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "campaign"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "media_source"

    .line 61
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lru/rocketbank/core/manager/AnalyticsManager$1;->this$0:Lru/rocketbank/core/manager/AnalyticsManager;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->access$000(Lru/rocketbank/core/manager/AnalyticsManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.class public final Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "RocketApplication.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/RocketApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/RocketApplication;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/RocketApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 145
    iget-object p2, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p2, p1}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    .line 146
    iget-object p2, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p2}, Lru/rocketbank/r2d2/RocketApplication;->access$getAnalyticsManager$p(Lru/rocketbank/r2d2/RocketApplication;)Lru/rocketbank/core/manager/AnalyticsManager;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logLastActivity(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 183
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shutdown activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p1, v2}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0}, Lru/rocketbank/r2d2/RocketApplication;->access$getAnalyticsManager$p(Lru/rocketbank/r2d2/RocketApplication;)Lru/rocketbank/core/manager/AnalyticsManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lru/rocketbank/core/manager/AnalyticsManager;->logLastActivityPaused(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shutdown activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v1}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v1}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    .line 157
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 176
    sget-object p2, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shutdown activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p2, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p2}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p2}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p1, v1}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    .line 152
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current activity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 169
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getTAG_APP()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shutdown activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {v0}, Lru/rocketbank/r2d2/RocketApplication;->access$getCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/RocketApplication$activityLifecycleCallbacks$1;->this$0:Lru/rocketbank/r2d2/RocketApplication;

    invoke-static {p1, v2}, Lru/rocketbank/r2d2/RocketApplication;->access$setCurrentActivity$p(Lru/rocketbank/r2d2/RocketApplication;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

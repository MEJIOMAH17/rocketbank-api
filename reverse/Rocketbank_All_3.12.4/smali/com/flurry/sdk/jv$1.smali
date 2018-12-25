.class final Lcom/flurry/sdk/jv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jv;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/flurry/sdk/jv$1;->a:Lcom/flurry/sdk/jv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V
    .locals 2

    .line 106
    new-instance v0, Lcom/flurry/sdk/ju;

    invoke-direct {v0}, Lcom/flurry/sdk/ju;-><init>()V

    .line 107
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    .line 108
    iput-object p1, v0, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ju$a;

    .line 109
    invoke-virtual {v0}, Lcom/flurry/sdk/ju;->b()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onActivityCreated for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p2, Lcom/flurry/sdk/ju$a;->a:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, p2}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 101
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityDestroyed for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/flurry/sdk/ju$a;->b:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 83
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityPaused for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/flurry/sdk/ju$a;->c:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityResumed for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/flurry/sdk/ju$a;->d:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onActivitySaveInstanceState for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p2, Lcom/flurry/sdk/ju$a;->g:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, p2}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStarted for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/flurry/sdk/ju$a;->e:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 89
    invoke-static {}, Lcom/flurry/sdk/jv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStopped for activity:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/flurry/sdk/ju$a;->f:Lcom/flurry/sdk/ju$a;

    invoke-static {p1, v0}, Lcom/flurry/sdk/jv$1;->a(Landroid/app/Activity;Lcom/flurry/sdk/ju$a;)V

    return-void
.end method

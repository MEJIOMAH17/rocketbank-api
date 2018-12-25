.class final Lcom/flurry/sdk/lf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka<",
        "Lcom/flurry/sdk/ju;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lf;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 5

    .line 67
    check-cast p1, Lcom/flurry/sdk/ju;

    .line 1070
    iget-object v0, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {p1, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1076
    :cond_0
    sget-object v1, Lcom/flurry/sdk/lf$5;->a:[I

    iget-object v2, p1, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/ju$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1092
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lf;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1085
    :pswitch_1
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onEndSession for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object p1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lf;->d(Landroid/content/Context;)V

    return-void

    .line 1079
    :pswitch_2
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Automatic onStartSession for context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object p1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-static {p1, v0}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

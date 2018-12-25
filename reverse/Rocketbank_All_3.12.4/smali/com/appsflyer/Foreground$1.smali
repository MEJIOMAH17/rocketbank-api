.class final Lcom/appsflyer/Foreground$1;
.super Ljava/util/TimerTask;
.source "Foreground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/Foreground;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground;Landroid/app/Activity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    iput-object p2, p0, Lcom/appsflyer/Foreground$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v0}, Lcom/appsflyer/Foreground;->access$000(Lcom/appsflyer/Foreground;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v0}, Lcom/appsflyer/Foreground;->access$100(Lcom/appsflyer/Foreground;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v0}, Lcom/appsflyer/Foreground;->access$002$3c28dbe6(Lcom/appsflyer/Foreground;)Z

    .line 161
    iget-object v0, p0, Lcom/appsflyer/Foreground$1;->this$0:Lcom/appsflyer/Foreground;

    invoke-static {v0}, Lcom/appsflyer/Foreground;->access$200(Lcom/appsflyer/Foreground;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/Foreground$Listener;

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/Foreground$1;->val$activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/appsflyer/Foreground$Listener;->onBecameBackground(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Listener threw exception! "

    .line 165
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

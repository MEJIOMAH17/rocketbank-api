.class final Lru/rocketbank/core/manager/FireCMManager$2;
.super Lrx/Subscriber;
.source "FireCMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/FireCMManager;->sendUserFcmToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/model/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/FireCMManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/FireCMManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lru/rocketbank/core/manager/FireCMManager$2;->this$0:Lru/rocketbank/core/manager/FireCMManager;

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

    const-string v0, "FireCMManager"

    const-string v1, "Sending token error [user]: "

    .line 141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    const-string p1, "FireCMManager"

    const-string v0, "Sending token done [user]: "

    .line 1146
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object p1, p0, Lru/rocketbank/core/manager/FireCMManager$2;->this$0:Lru/rocketbank/core/manager/FireCMManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/FireCMManager;->access$000(Lru/rocketbank/core/manager/FireCMManager;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "FCM_SENT"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1149
    iget-object p1, p0, Lru/rocketbank/core/manager/FireCMManager$2;->this$0:Lru/rocketbank/core/manager/FireCMManager;

    invoke-static {p1}, Lru/rocketbank/core/manager/FireCMManager;->access$000(Lru/rocketbank/core/manager/FireCMManager;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "GCM_SENT_LEAD_DEAD"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

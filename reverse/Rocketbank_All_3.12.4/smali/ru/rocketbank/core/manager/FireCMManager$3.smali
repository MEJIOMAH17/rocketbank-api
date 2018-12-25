.class final Lru/rocketbank/core/manager/FireCMManager$3;
.super Ljava/lang/Object;
.source "FireCMManager.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/FireCMManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/FireCMManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lru/rocketbank/core/manager/FireCMManager$3;->this$0:Lru/rocketbank/core/manager/FireCMManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 114
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "FireCMManager"

    const-string v1, "Sending token error [user]: "

    .line 1117
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_0

    .line 1120
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    .line 1123
    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x191

    invoke-virtual {p1, v0}, Lru/rocketbank/core/network/exception/RocketResponseException;->isStatusEqual(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1124
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 1128
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.class final Lru/rocketbank/core/user/Authorization$refreshProfile$1;
.super Ljava/lang/Object;
.source "Authorization.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/Authorization;->refreshProfile()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/core/network/model/UserResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthorization.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Authorization.kt\nru/rocketbank/core/user/Authorization$refreshProfile$1\n*L\n1#1,306:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/user/Authorization;


# direct methods
.method constructor <init>(Lru/rocketbank/core/user/Authorization;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/user/Authorization$refreshProfile$1;->this$0:Lru/rocketbank/core/user/Authorization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 1

    .line 29
    check-cast p1, Lru/rocketbank/core/network/model/UserResponse;

    if-eqz p1, :cond_0

    .line 1184
    iget-object v0, p0, Lru/rocketbank/core/user/Authorization$refreshProfile$1;->this$0:Lru/rocketbank/core/user/Authorization;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/UserResponse;->getUser()Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/user/Authorization;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    return-void

    :cond_0
    return-void
.end method

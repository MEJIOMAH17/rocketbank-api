.class final Lru/rocketbank/core/manager/ContactManager$1;
.super Ljava/lang/Object;
.source "ContactManager.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/ContactManager;-><init>(Landroid/content/Context;Lru/rocketbank/core/network/api/RocketAPI;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/RocketShortcutManager;)V
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
        "Lru/rocketbank/core/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/ContactManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/ContactManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/ContactManager$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 37
    check-cast p1, Lru/rocketbank/core/model/UserModel;

    .line 1066
    iget-object v0, p0, Lru/rocketbank/core/manager/ContactManager$1;->this$0:Lru/rocketbank/core/manager/ContactManager;

    const-string v1, "userModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getContactsHash()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/core/manager/ContactManager;->access$reloadContactHash(Lru/rocketbank/core/manager/ContactManager;Ljava/lang/String;)V

    return-void
.end method

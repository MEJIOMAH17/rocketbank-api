.class final Lru/rocketbank/core/user/impl/RealmAuthStorage$removeState$1;
.super Ljava/lang/Object;
.source "RealmAuthStorage.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/impl/RealmAuthStorage;->removeState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/user/impl/RealmAuthStorage;


# direct methods
.method constructor <init>(Lru/rocketbank/core/user/impl/RealmAuthStorage;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage$removeState$1;->this$0:Lru/rocketbank/core/user/impl/RealmAuthStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage$removeState$1;->this$0:Lru/rocketbank/core/user/impl/RealmAuthStorage;

    invoke-virtual {p1}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method

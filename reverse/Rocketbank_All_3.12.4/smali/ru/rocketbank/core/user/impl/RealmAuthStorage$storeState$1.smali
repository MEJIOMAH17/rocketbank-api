.class final Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;
.super Ljava/lang/Object;
.source "RealmAuthStorage.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/user/impl/RealmAuthStorage;->storeState(Lru/rocketbank/core/realm/UserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $userData:Lru/rocketbank/core/realm/UserData;

.field final synthetic this$0:Lru/rocketbank/core/user/impl/RealmAuthStorage;


# direct methods
.method constructor <init>(Lru/rocketbank/core/user/impl/RealmAuthStorage;Lru/rocketbank/core/realm/UserData;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;->this$0:Lru/rocketbank/core/user/impl/RealmAuthStorage;

    iput-object p2, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;->$userData:Lru/rocketbank/core/realm/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;->this$0:Lru/rocketbank/core/user/impl/RealmAuthStorage;

    invoke-virtual {p1}, Lru/rocketbank/core/user/impl/RealmAuthStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmAuthStorage$storeState$1;->$userData:Lru/rocketbank/core/realm/UserData;

    check-cast v0, Lio/realm/RealmModel;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    return-void
.end method

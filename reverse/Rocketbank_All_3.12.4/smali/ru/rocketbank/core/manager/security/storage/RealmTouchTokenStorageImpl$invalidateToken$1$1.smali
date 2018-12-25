.class final Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$invalidateToken$1$1;
.super Ljava/lang/Object;
.source "RealmTouchTokenStorageImpl.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->invalidateToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/Realm;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$invalidateToken$1$1;->$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$invalidateToken$1$1;->$realm:Lio/realm/Realm;

    const-class v0, Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    return-void
.end method

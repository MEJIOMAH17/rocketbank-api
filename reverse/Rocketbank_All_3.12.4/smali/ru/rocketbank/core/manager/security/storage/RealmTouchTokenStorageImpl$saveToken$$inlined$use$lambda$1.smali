.class final Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;
.super Ljava/lang/Object;
.source "RealmTouchTokenStorageImpl.kt"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl;->saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic $tokenObject$inlined:Lru/rocketbank/core/manager/security/storage/TouchIdObject;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lru/rocketbank/core/manager/security/storage/TouchIdObject;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;->$realm:Lio/realm/Realm;

    iput-object p2, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;->$tokenObject$inlined:Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;->$realm:Lio/realm/Realm;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/storage/RealmTouchTokenStorageImpl$saveToken$$inlined$use$lambda$1;->$tokenObject$inlined:Lru/rocketbank/core/manager/security/storage/TouchIdObject;

    check-cast v0, Lio/realm/RealmModel;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    const-string p1, "RealmTouchTokenStorage"

    const-string v0, "token saved"

    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

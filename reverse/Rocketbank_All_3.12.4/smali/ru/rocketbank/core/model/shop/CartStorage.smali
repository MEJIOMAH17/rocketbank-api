.class public final Lru/rocketbank/core/model/shop/CartStorage;
.super Ljava/lang/Object;
.source "CartStorage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/shop/CartStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCartStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CartStorage.kt\nru/rocketbank/core/model/shop/CartStorage\n*L\n1#1,96:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/model/shop/CartStorage$Companion;

.field private static final TAG:Ljava/lang/String; = "CartStorage"


# instance fields
.field private final realmConfiguration:Lio/realm/RealmConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/shop/CartStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/shop/CartStorage$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/shop/CartStorage;->Companion:Lru/rocketbank/core/model/shop/CartStorage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string v1, "cart.realm"

    .line 27
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 30
    new-instance v1, Lru/rocketbank/core/realm/module/CartModule;

    invoke-direct {v1}, Lru/rocketbank/core/realm/module/CartModule;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    const-string v1, "RealmConfiguration.Build\u2026e())\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/model/shop/CartStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lru/rocketbank/core/model/shop/CartStorage;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/model/shop/CartStorage$clear$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/model/shop/CartStorage$clear$1;-><init>(Lru/rocketbank/core/model/shop/CartStorage;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    :try_start_1
    sget-object v1, Lru/rocketbank/core/model/shop/CartStorage;->TAG:Ljava/lang/String;

    const-string v2, "failed to store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    throw v0
.end method

.method public final delete(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 2

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/model/shop/CartStorage$delete$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/model/shop/CartStorage$delete$1;-><init>(Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/CartItem;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 78
    :try_start_1
    sget-object v0, Lru/rocketbank/core/model/shop/CartStorage;->TAG:Ljava/lang/String;

    const-string v1, "failed to store"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    throw p1
.end method

.method public final getRealm()Lio/realm/Realm;
    .locals 2

    .line 18
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/model/shop/CartStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final read()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/realm/RealmCartItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lru/rocketbank/core/realm/RealmCartItem;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v2

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    :try_start_1
    sget-object v2, Lru/rocketbank/core/model/shop/CartStorage;->TAG:Ljava/lang/String;

    const-string v3, "failed to read storage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    throw v0
.end method

.method public final readObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Lru/rocketbank/core/realm/RealmCartItem;",
            ">;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lru/rocketbank/core/model/shop/CartStorage$readObservable$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/model/shop/CartStorage$readObservable$1;-><init>(Lru/rocketbank/core/model/shop/CartStorage;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-string v1, "Observable.create {\n    \u2026t.onCompleted()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final save(Lru/rocketbank/core/model/shop/CartItem;)V
    .locals 2

    const-string v0, "cartItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/model/shop/CartStorage$save$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/core/model/shop/CartStorage$save$1;-><init>(Lru/rocketbank/core/model/shop/CartStorage;Lru/rocketbank/core/model/shop/CartItem;)V

    check-cast v1, Lio/realm/Realm$Transaction;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    sget-object v0, Lru/rocketbank/core/model/shop/CartStorage;->TAG:Ljava/lang/String;

    const-string v1, "failed to store"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/core/model/shop/CartStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    throw p1
.end method

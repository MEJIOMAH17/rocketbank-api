.class public final Lru/rocketbank/core/user/impl/RealmWidgetStorage;
.super Ljava/lang/Object;
.source "RealmWidgetStorage.kt"

# interfaces
.implements Lru/rocketbank/core/user/WidgetStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealmWidgetStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealmWidgetStorage.kt\nru/rocketbank/core/user/impl/RealmWidgetStorage\n*L\n1#1,69:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;

.field private static final FILE_WIDGET_NAME:Ljava/lang/String; = "widget.realm"

.field private static final TAG:Ljava/lang/String; = "WidgetStoage"


# instance fields
.field private final realmConfiguration:Lio/realm/RealmConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->Companion:Lru/rocketbank/core/user/impl/RealmWidgetStorage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    .line 37
    sget-object v1, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->FILE_WIDGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-string v1, "sY74xnHAniHWFTyixfyPRkJc3DQIg1VYvpfRD0OZkPmrw3mNGSotO8JvvnS2tvBb"

    const-string v2, "UTF-8"

    .line 1022
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "Charset.forName(charsetName)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 41
    new-instance v1, Lru/rocketbank/core/realm/module/WidgetModule;

    invoke-direct {v1}, Lru/rocketbank/core/realm/module/WidgetModule;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lru/rocketbank/core/realm/module/OpeationModule;

    invoke-direct {v3}, Lru/rocketbank/core/realm/module/OpeationModule;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    const-string v1, "RealmConfiguration.Build\u2026                 .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getRealm()Lio/realm/Realm;
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    const-string v1, "Realm.getInstance(realmConfiguration)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 13
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/realm/Realm;

    .line 14
    new-instance v3, Lru/rocketbank/core/user/impl/RealmWidgetStorage$clear$1$1;

    invoke-direct {v3, v2}, Lru/rocketbank/core/user/impl/RealmWidgetStorage$clear$1$1;-><init>(Lio/realm/Realm;)V

    check-cast v3, Lio/realm/Realm$Transaction;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 17
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final read()Lru/rocketbank/core/realm/WidgetData;
    .locals 4

    .line 54
    invoke-direct {p0}, Lru/rocketbank/core/user/impl/RealmWidgetStorage;->getRealm()Lio/realm/Realm;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/realm/Realm;

    .line 55
    const-class v3, Lru/rocketbank/core/realm/WidgetData;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/realm/WidgetData;

    if-eqz v3, :cond_0

    .line 56
    check-cast v3, Lio/realm/RealmModel;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/realm/WidgetData;

    .line 57
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 54
    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

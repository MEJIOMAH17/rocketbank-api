.class public final Lru/rocketbank/core/manager/PresenterManager;
.super Ljava/lang/Object;
.source "PresenterManager.kt"


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

.field private static final reverseResolve:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lru/rocketbank/core/utils/presenter/Presenter;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static final uuidPresenter:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lru/rocketbank/core/utils/presenter/Presenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lru/rocketbank/core/manager/PresenterManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/PresenterManager;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    .line 8
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/PresenterManager;->uuidPresenter:Landroid/support/v4/util/ArrayMap;

    .line 9
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lru/rocketbank/core/manager/PresenterManager;->reverseResolve:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getReverseResolve$p$120e57be()Landroid/support/v4/util/ArrayMap;
    .locals 1

    .line 7
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->reverseResolve:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getUuidPresenter$p$120e57be()Landroid/support/v4/util/ArrayMap;
    .locals 1

    .line 7
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->uuidPresenter:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public static getOrCreatePresenter(Ljava/lang/String;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lru/rocketbank/core/utils/presenter/Presenter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "uuid"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string v0, "UUID.fromString(uuid)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p0

    return-object p0
.end method

.method public static getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lru/rocketbank/core/utils/presenter/Presenter;",
            ">(",
            "Ljava/util/UUID;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    .line 41
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->uuidPresenter:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/utils/presenter/Presenter;

    if-nez p0, :cond_0

    const-string p0, "clz"

    .line 41
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "clz.newInstance()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lru/rocketbank/core/utils/presenter/Presenter;

    .line 2012
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    .line 2014
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->uuidPresenter:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->reverseResolve:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    new-instance v0, Lru/rocketbank/core/manager/PresenterManager$add$1;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/core/manager/PresenterManager$add$1;-><init>(Ljava/util/UUID;Lru/rocketbank/core/utils/presenter/Presenter;)V

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;

    invoke-virtual {p0, v0}, Lru/rocketbank/core/utils/presenter/Presenter;->addOnDestroyListener(Lru/rocketbank/core/utils/presenter/Presenter$OnDestroyListener;)V

    :cond_0
    return-object p0
.end method

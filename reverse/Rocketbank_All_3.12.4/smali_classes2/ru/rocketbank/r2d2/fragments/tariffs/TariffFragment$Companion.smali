.class public final Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;
.super Ljava/lang/Object;
.source "TariffFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;-><init>()V

    return-void
.end method

.method private static synthetic LAST_TARIFF_KEY$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic TARIFF_KEY$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic TOKEN_KEY$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic tariffUpdateSubject$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getTariffUpdateSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getTariffUpdateSubject$cp()Lrx/subjects/PublishSubject;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff;Lru/rocketbank/core/model/TariffModel;)Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tariff"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastTariff"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;-><init>()V

    .line 279
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 280
    invoke-static {}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getTARIFF_KEY$cp()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    invoke-static {}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getLAST_TARIFF_KEY$cp()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    invoke-static {}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$getTOKEN_KEY$cp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.class public final Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;
.super Ljava/lang/Object;
.source "AbstractDeliveryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;-><init>()V

    return-void
.end method

.method protected static synthetic TOKEN_KEY$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final getTOKEN_KEY()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->access$getTOKEN_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setArguments(Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment<",
            "*>;>(TT;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;->getTOKEN_KEY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

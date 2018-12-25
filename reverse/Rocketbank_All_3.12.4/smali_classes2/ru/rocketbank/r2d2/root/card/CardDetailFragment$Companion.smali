.class public final Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;
.super Ljava/lang/Object;
.source "CardDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 467
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lru/rocketbank/r2d2/root/card/CardDetailFragment;
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plasticToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;-><init>()V

    .line 483
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CARD_TOKEN"

    .line 484
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PLASTIC_TOKEN"

    .line 485
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CARD_EXTRACTS"

    .line 486
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

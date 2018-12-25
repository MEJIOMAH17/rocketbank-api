.class public final Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;
.super Ljava/lang/Object;
.source "AccountWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;-><init>()V

    .line 165
    sget-object v1, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->Companion:Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 166
    check-cast v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;

    return-object v0
.end method

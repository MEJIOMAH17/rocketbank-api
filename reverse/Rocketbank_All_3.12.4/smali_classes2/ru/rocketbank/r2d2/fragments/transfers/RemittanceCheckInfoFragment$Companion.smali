.class public final Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;
.super Ljava/lang/Object;
.source "RemittanceCheckInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic newInstance$default(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;ZILjava/lang/Object;)Landroid/support/v4/app/Fragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 150
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;->newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Z)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Landroid/support/v4/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;->newInstance$default(Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment$Companion;Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;ZILjava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;Z)Landroid/support/v4/app/Fragment;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 152
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "KEY_EDIT_MODE"

    .line 153
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    new-instance p1, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;

    invoke-direct {p1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;-><init>()V

    .line 155
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceCheckInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

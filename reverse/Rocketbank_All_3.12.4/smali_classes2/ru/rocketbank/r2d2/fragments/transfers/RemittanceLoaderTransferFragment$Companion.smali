.class public final Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;
.super Ljava/lang/Object;
.source "RemittanceLoaderTransferFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;
    .locals 3

    const-string v0, "remittanceOutgoing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;-><init>()V

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "remittance_outgoing"

    .line 213
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/RemittanceLoaderTransferFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

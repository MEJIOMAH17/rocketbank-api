.class public final Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;
.super Ljava/lang/Object;
.source "DepositOpenResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/DepositOpenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DepositOpenData"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 13
    iget v0, p0, Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;->status:I

    return v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;->description:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 13
    iput p1, p0, Lru/rocketbank/core/network/model/DepositOpenResult$DepositOpenData;->status:I

    return-void
.end method

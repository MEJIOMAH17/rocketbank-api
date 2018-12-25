.class public final Lru/rocketbank/core/model/transfers/Template;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/Template$ProviderPayment;,
        Lru/rocketbank/core/model/transfers/Template$Remittance;,
        Lru/rocketbank/core/model/transfers/Template$InternalTransfer;,
        Lru/rocketbank/core/model/transfers/Template$Card2Card;
    }
.end annotation


# instance fields
.field public amount:D

.field public card2Card:Lru/rocketbank/core/model/transfers/Template$Card2Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card2card_transfer"
    .end annotation
.end field

.field public corporateRemittance:Lru/rocketbank/core/model/transfers/Template$Remittance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corporate_remittance"
    .end annotation
.end field

.field public id:I

.field public individualRemittance:Lru/rocketbank/core/model/transfers/Template$Remittance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "individual_remittance"
    .end annotation
.end field

.field public internalTransfer:Lru/rocketbank/core/model/transfers/Template$InternalTransfer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "internal_transfer"
    .end annotation
.end field

.field public provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider_payment"
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    instance-of v0, p1, Lru/rocketbank/core/model/transfers/Template;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/transfers/Template;

    iget p1, p1, Lru/rocketbank/core/model/transfers/Template;->id:I

    iget v0, p0, Lru/rocketbank/core/model/transfers/Template;->id:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

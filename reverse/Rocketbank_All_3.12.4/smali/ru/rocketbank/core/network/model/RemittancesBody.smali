.class public final Lru/rocketbank/core/network/model/RemittancesBody;
.super Ljava/lang/Object;
.source "RemittancesBody.kt"


# instance fields
.field private account:Ljava/lang/String;

.field private amount:D

.field private bik:Ljava/lang/String;

.field private nds:Z

.field private purpose:Ljava/lang/String;

.field private recipientName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccount()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/network/model/RemittancesBody;->account:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmount()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lru/rocketbank/core/network/model/RemittancesBody;->amount:D

    return-wide v0
.end method

.method public final getBik()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/RemittancesBody;->bik:Ljava/lang/String;

    return-object v0
.end method

.method public final getNds()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lru/rocketbank/core/network/model/RemittancesBody;->nds:Z

    return v0
.end method

.method public final getPurpose()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/network/model/RemittancesBody;->purpose:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipientName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/network/model/RemittancesBody;->recipientName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccount(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/network/model/RemittancesBody;->account:Ljava/lang/String;

    return-void
.end method

.method public final setAmount(D)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lru/rocketbank/core/network/model/RemittancesBody;->amount:D

    return-void
.end method

.method public final setBik(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/network/model/RemittancesBody;->bik:Ljava/lang/String;

    return-void
.end method

.method public final setNds(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lru/rocketbank/core/network/model/RemittancesBody;->nds:Z

    return-void
.end method

.method public final setPurpose(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/network/model/RemittancesBody;->purpose:Ljava/lang/String;

    return-void
.end method

.method public final setRecipientName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/network/model/RemittancesBody;->recipientName:Ljava/lang/String;

    return-void
.end method

.class public final Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;
.super Ljava/lang/Object;
.source "RemittanceRequestData.kt"


# instance fields
.field private final card_token:Ljava/lang/String;

.field private final hash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_uniq_timestamp_hash"
    .end annotation
.end field

.field private final remittance:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final remittance_kind:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;)V
    .locals 1

    const-string v0, "remittanceOutgoingData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getCardAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->card_token:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->remittance:Ljava/util/Map;

    .line 9
    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;->getRemittance_kind()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->remittance_kind:Ljava/lang/String;

    .line 11
    sget-object p1, Lru/rocketbank/core/utils/Payments;->INSTANCE:Lru/rocketbank/core/utils/Payments;

    invoke-virtual {p1}, Lru/rocketbank/core/utils/Payments;->newHash()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCard_token()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->card_token:Ljava/lang/String;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemittance()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->remittance:Ljava/util/Map;

    return-object v0
.end method

.method public final getRemittance_kind()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceRequestData;->remittance_kind:Ljava/lang/String;

    return-object v0
.end method

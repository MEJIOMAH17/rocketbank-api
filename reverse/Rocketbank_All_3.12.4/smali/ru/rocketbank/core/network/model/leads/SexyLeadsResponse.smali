.class public final Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;
.super Ljava/lang/Object;
.source "SexyLeadsResponse.kt"


# instance fields
.field private final delivery:Lru/rocketbank/core/model/DeliveryData;

.field private final documentCheck:Lru/rocketbank/core/network/model/leads/Document;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document_check"
    .end annotation
.end field

.field private final documentRejected:Lru/rocketbank/core/network/model/leads/Document;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document_rejected"
    .end annotation
.end field

.field private final pusherToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pusher_token"
    .end annotation
.end field

.field private final status:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentRejected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentCheck"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    iput-object p5, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    iput-object p6, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;ILkotlin/jvm/internal/Ref;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const-string p3, ""

    :cond_2
    move-object v3, p3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;ILjava/lang/Object;)Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;)Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lru/rocketbank/core/model/DeliveryData;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    return-object v0
.end method

.method public final component5()Lru/rocketbank/core/network/model/leads/Document;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    return-object v0
.end method

.method public final component6()Lru/rocketbank/core/network/model/leads/Document;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;)Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;
    .locals 8

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentRejected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentCheck"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/model/DeliveryData;Lru/rocketbank/core/network/model/leads/Document;Lru/rocketbank/core/network/model/leads/Document;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    iget-object v1, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    iget-object v1, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    iget-object p1, p1, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDelivery()Lru/rocketbank/core/model/DeliveryData;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    return-object v0
.end method

.method public final getDocumentCheck()Lru/rocketbank/core/network/model/leads/Document;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    return-object v0
.end method

.method public final getDocumentRejected()Lru/rocketbank/core/network/model/leads/Document;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    return-object v0
.end method

.method public final getPusherToken()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SexyLeadsResponse(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pusherToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->pusherToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->delivery:Lru/rocketbank/core/model/DeliveryData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentRejected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentRejected:Lru/rocketbank/core/network/model/leads/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/network/model/leads/SexyLeadsResponse;->documentCheck:Lru/rocketbank/core/network/model/leads/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

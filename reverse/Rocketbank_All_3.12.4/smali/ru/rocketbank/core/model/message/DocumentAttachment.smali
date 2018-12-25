.class public final Lru/rocketbank/core/model/message/DocumentAttachment;
.super Lru/rocketbank/core/model/message/Attachment;
.source "DocumentAttachment.kt"


# instance fields
.field private ext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    return-void
.end method

.method private final getAsDocument(Z)Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lru/rocketbank/core/network/Request;->LINK_API:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/documents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lru/rocketbank/core/model/message/DocumentAttachment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "/thumb"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getDocument()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lru/rocketbank/core/model/message/DocumentAttachment;->getAsDocument(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDocumentThumb()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lru/rocketbank/core/model/message/DocumentAttachment;->getAsDocument(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/message/DocumentAttachment;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final setExt(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/message/DocumentAttachment;->ext:Ljava/lang/String;

    return-void
.end method

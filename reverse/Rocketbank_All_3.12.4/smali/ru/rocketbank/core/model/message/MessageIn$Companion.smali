.class public final Lru/rocketbank/core/model/message/MessageIn$Companion;
.super Ljava/lang/Object;
.source "MessageIn.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/message/MessageIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lru/rocketbank/core/model/message/MessageIn$Companion;-><init>()V

    return-void
.end method

.method public static synthetic TAG$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final create(Lru/rocketbank/core/model/message/MessageIn;Lru/rocketbank/core/model/message/Attachment;)Lru/rocketbank/core/model/message/MessageIn;
    .locals 4

    const-string v0, "messageIn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lru/rocketbank/core/model/message/MessageIn;

    invoke-direct {v0}, Lru/rocketbank/core/model/message/MessageIn;-><init>()V

    .line 81
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->isAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setAdmin(Z)V

    .line 82
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAdminPermalink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setAdminPermalink(Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setAttachments(Ljava/util/List;)V

    .line 84
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setAuthor(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setAvatar(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getCreatedAt()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setCreatedAt(I)V

    .line 87
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getDeliveredAt()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setDeliveredAt(I)V

    .line 88
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/model/message/MessageIn;->setId(J)V

    .line 89
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getReadAt()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/message/MessageIn;->setReadAt(I)V

    if-nez p2, :cond_0

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-text"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lru/rocketbank/core/model/message/MessageIn;->access$setAbstractId$p(Lru/rocketbank/core/model/message/MessageIn;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/model/message/MessageIn;->setBody(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lru/rocketbank/core/model/message/Attachment;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/core/model/message/MessageIn;->access$setAbstractId$p(Lru/rocketbank/core/model/message/MessageIn;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->getAttachments()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-static {}, Lru/rocketbank/core/model/message/MessageIn;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

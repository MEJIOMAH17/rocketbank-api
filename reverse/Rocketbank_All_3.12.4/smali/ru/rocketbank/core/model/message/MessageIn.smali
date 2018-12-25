.class public final Lru/rocketbank/core/model/message/MessageIn;
.super Ljava/lang/Object;
.source "MessageIn.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/message/MessageIn$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessageIn.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageIn.kt\nru/rocketbank/core/model/message/MessageIn\n*L\n1#1,103:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/model/message/MessageIn$Companion;

.field private static final TAG:Ljava/lang/String; = "MessageIn"


# instance fields
.field private abstractId:Ljava/lang/String;

.field private adminPermalink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "admin_permalink"
    .end annotation
.end field

.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private author:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private createdAt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private deliveredAt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delivered_at"
    .end annotation
.end field

.field private transient groupTime:I

.field private id:J

.field private isAdmin:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "admin"
    .end annotation
.end field

.field private transient isFailed:Z

.field private transient isUploading:Z

.field private readAt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "read_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/message/MessageIn$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/message/MessageIn$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/message/MessageIn;->Companion:Lru/rocketbank/core/model/message/MessageIn$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAbstractId$p(Lru/rocketbank/core/model/message/MessageIn;)Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lru/rocketbank/core/model/message/MessageIn;->abstractId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lru/rocketbank/core/model/message/MessageIn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setAbstractId$p(Lru/rocketbank/core/model/message/MessageIn;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/message/MessageIn;->abstractId:Ljava/lang/String;

    return-void
.end method

.method public static final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/message/MessageIn;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 54
    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/model/message/MessageIn;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 64
    :cond_1
    instance-of v2, p1, Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v2, :cond_3

    .line 66
    check-cast p1, Lru/rocketbank/core/model/message/MessageIn;

    iget-wide v2, p1, Lru/rocketbank/core/model/message/MessageIn;->id:J

    iget-wide v4, p0, Lru/rocketbank/core/model/message/MessageIn;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public final getAdminPermalink()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lru/rocketbank/core/model/message/MessageIn;->adminPermalink:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttachment()Lru/rocketbank/core/model/message/Attachment;
    .locals 3

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/model/message/MessageIn;->attachments:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/message/Attachment;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/Attachment;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/model/message/MessageIn;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/core/model/message/MessageIn;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/model/message/MessageIn;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/message/MessageIn;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()I
    .locals 1

    .line 22
    iget v0, p0, Lru/rocketbank/core/model/message/MessageIn;->createdAt:I

    return v0
.end method

.method public final getDeliveredAt()I
    .locals 1

    .line 25
    iget v0, p0, Lru/rocketbank/core/model/message/MessageIn;->deliveredAt:I

    return v0
.end method

.method public final getGroupTime()I
    .locals 1

    .line 19
    iget v0, p0, Lru/rocketbank/core/model/message/MessageIn;->groupTime:I

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lru/rocketbank/core/model/message/MessageIn;->id:J

    return-wide v0
.end method

.method public final getReadAt()I
    .locals 1

    .line 28
    iget v0, p0, Lru/rocketbank/core/model/message/MessageIn;->readAt:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 73
    iget-wide v0, p0, Lru/rocketbank/core/model/message/MessageIn;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAdmin()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lru/rocketbank/core/model/message/MessageIn;->isAdmin:Z

    return v0
.end method

.method public final isFailed()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lru/rocketbank/core/model/message/MessageIn;->isFailed:Z

    return v0
.end method

.method public final isUploading()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lru/rocketbank/core/model/message/MessageIn;->isUploading:Z

    return v0
.end method

.method public final setAdmin(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lru/rocketbank/core/model/message/MessageIn;->isAdmin:Z

    return-void
.end method

.method public final setAdminPermalink(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lru/rocketbank/core/model/message/MessageIn;->adminPermalink:Ljava/lang/String;

    return-void
.end method

.method public final setAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/message/Attachment;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/model/message/MessageIn;->attachments:Ljava/util/List;

    return-void
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lru/rocketbank/core/model/message/MessageIn;->author:Ljava/lang/String;

    return-void
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/model/message/MessageIn;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/model/message/MessageIn;->body:Ljava/lang/String;

    return-void
.end method

.method public final setCreatedAt(I)V
    .locals 0

    .line 22
    iput p1, p0, Lru/rocketbank/core/model/message/MessageIn;->createdAt:I

    return-void
.end method

.method public final setDeliveredAt(I)V
    .locals 0

    .line 25
    iput p1, p0, Lru/rocketbank/core/model/message/MessageIn;->deliveredAt:I

    return-void
.end method

.method public final setFailed(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lru/rocketbank/core/model/message/MessageIn;->isFailed:Z

    return-void
.end method

.method public final setGroupTime(I)V
    .locals 0

    .line 19
    iput p1, p0, Lru/rocketbank/core/model/message/MessageIn;->groupTime:I

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lru/rocketbank/core/model/message/MessageIn;->id:J

    return-void
.end method

.method public final setReadAt(I)V
    .locals 0

    .line 28
    iput p1, p0, Lru/rocketbank/core/model/message/MessageIn;->readAt:I

    return-void
.end method

.method public final setUploading(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lru/rocketbank/core/model/message/MessageIn;->isUploading:Z

    return-void
.end method

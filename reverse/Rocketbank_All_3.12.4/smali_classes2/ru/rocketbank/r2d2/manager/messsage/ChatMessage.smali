.class public final Lru/rocketbank/r2d2/manager/messsage/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/manager/messsage/ChatMessage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/manager/messsage/ChatMessage$Companion;

.field public static final SUBTYPE_DOC:I = 0x2

.field public static final SUBTYPE_IMAGE:I = 0x1

.field public static final SUBTYPE_OPERATION:I = 0x3

.field public static final SUBTYPE_RATING:I = 0x4

.field public static final SUBTYPE_STICKER:I = 0x5

.field public static final SUBTYPE_TEXT:I = 0x0

.field public static final TYPE_INCOMING_MESSAGE:I = 0x0

.field public static final TYPE_OUTGOING_MESSAGE:I = 0x1

.field public static final TYPE_TYPING:I = 0x2


# instance fields
.field private attachmentDirect:Lru/rocketbank/core/model/message/Attachment;

.field private chunk:I

.field private failed:Z

.field private imageId:J

.field private imagePath:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private internalId:J

.field private isTyping:Z

.field private loading:Z

.field private message:Lru/rocketbank/core/model/message/MessageIn;

.field private number:I

.field private sending:Z

.field private sent:Z

.field private subType:I

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/manager/messsage/ChatMessage$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->Companion:Lru/rocketbank/r2d2/manager/messsage/ChatMessage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 74
    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    .line 78
    :cond_1
    instance-of v1, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    if-eqz v1, :cond_6

    .line 79
    check-cast p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;

    iget-wide v3, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->internalId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    iget-wide v3, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->internalId:J

    iget-wide v5, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->internalId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    return v2

    .line 83
    :cond_2
    iget-object v1, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v1, :cond_6

    .line 84
    iget-object v1, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    iget-object v3, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-ne v1, v3, :cond_4

    .line 85
    iget v1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->chunk:I

    iget p1, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->chunk:I

    if-ne v1, p1, :cond_3

    return v2

    :cond_3
    return v0

    .line 88
    :cond_4
    iget-object v1, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    iget-object v3, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    iget v1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->chunk:I

    iget p1, p1, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->chunk:I

    if-ne v1, p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    return v0
.end method

.method public final getAttachmentDirect()Lru/rocketbank/core/model/message/Attachment;
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->attachmentDirect:Lru/rocketbank/core/model/message/Attachment;

    return-object v0
.end method

.method public final getChunk()I
    .locals 1

    .line 29
    iget v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->chunk:I

    return v0
.end method

.method public final getFailed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->failed:Z

    return v0
.end method

.method public final getImageId()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->imageId:J

    return-wide v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getInternalId()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->internalId:J

    return-wide v0
.end method

.method public final getLoading()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->loading:Z

    return v0
.end method

.method public final getMessage()Lru/rocketbank/core/model/message/MessageIn;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 27
    iget v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->number:I

    return v0
.end method

.method public final getSending()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->sending:Z

    return v0
.end method

.method public final getSent()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->sent:Z

    return v0
.end method

.method public final getSubType()I
    .locals 1

    .line 21
    iget v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->subType:I

    return v0
.end method

.method public final getTime()I
    .locals 1

    .line 25
    iget v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->time:I

    return v0
.end method

.method public final getType()I
    .locals 3

    .line 54
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/MessageIn;->isAdmin()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 98
    iget-wide v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->internalId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/message/MessageIn;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isTyping()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping:Z

    return v0
.end method

.method public final setAttachmentDirect(Lru/rocketbank/core/model/message/Attachment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->attachmentDirect:Lru/rocketbank/core/model/message/Attachment;

    return-void
.end method

.method public final setChunk(I)V
    .locals 0

    .line 29
    iput p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->chunk:I

    return-void
.end method

.method public final setFailed(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->failed:Z

    return-void
.end method

.method public final setImageId(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->imageId:J

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public final setImageUri(Landroid/net/Uri;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->imageUri:Landroid/net/Uri;

    return-void
.end method

.method public final setInternalId(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->internalId:J

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->loading:Z

    return-void
.end method

.method public final setMessage(Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->message:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method

.method public final setNumber(I)V
    .locals 0

    .line 27
    iput p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->number:I

    return-void
.end method

.method public final setSending(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->sending:Z

    return-void
.end method

.method public final setSent(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->sent:Z

    return-void
.end method

.method public final setSubType(I)V
    .locals 0

    .line 21
    iput p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->subType:I

    return-void
.end method

.method public final setTime(I)V
    .locals 0

    .line 25
    iput p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->time:I

    return-void
.end method

.method public final setTyping(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/ChatMessage;->isTyping:Z

    return-void
.end method

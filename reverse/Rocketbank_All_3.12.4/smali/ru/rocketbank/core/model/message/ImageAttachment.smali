.class public final Lru/rocketbank/core/model/message/ImageAttachment;
.super Lru/rocketbank/core/model/message/Attachment;
.source "ImageAttachment.kt"


# instance fields
.field private ext:Ljava/lang/String;

.field private height:I

.field private imagePath:Landroid/net/Uri;

.field private uploading:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    return-void
.end method

.method private final getAsImage(Z)Ljava/lang/String;
    .locals 1

    const-string v0, "images"

    .line 27
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getLink(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getExt()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/message/ImageAttachment;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/core/model/message/ImageAttachment;->height:I

    return v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getAsImage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImagePath()Landroid/net/Uri;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/message/ImageAttachment;->imagePath:Landroid/net/Uri;

    return-object v0
.end method

.method public final getImageThumb()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, v0}, Lru/rocketbank/core/model/message/ImageAttachment;->getAsImage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUploading()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lru/rocketbank/core/model/message/ImageAttachment;->uploading:Z

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/core/model/message/ImageAttachment;->width:I

    return v0
.end method

.method public final setExt(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/message/ImageAttachment;->ext:Ljava/lang/String;

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 10
    iput p1, p0, Lru/rocketbank/core/model/message/ImageAttachment;->height:I

    return-void
.end method

.method public final setImagePath(Landroid/net/Uri;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/message/ImageAttachment;->imagePath:Landroid/net/Uri;

    return-void
.end method

.method public final setUploading(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lru/rocketbank/core/model/message/ImageAttachment;->uploading:Z

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 12
    iput p1, p0, Lru/rocketbank/core/model/message/ImageAttachment;->width:I

    return-void
.end method

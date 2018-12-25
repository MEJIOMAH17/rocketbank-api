.class public final Lru/rocketbank/core/model/message/StickerAttachment;
.super Lru/rocketbank/core/model/message/Attachment;
.source "StickerAttachment.kt"


# instance fields
.field private sticker:Lru/rocketbank/core/model/message/Sticker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSticker()Lru/rocketbank/core/model/message/Sticker;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/core/model/message/StickerAttachment;->sticker:Lru/rocketbank/core/model/message/Sticker;

    return-object v0
.end method

.method public final setSticker(Lru/rocketbank/core/model/message/Sticker;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lru/rocketbank/core/model/message/StickerAttachment;->sticker:Lru/rocketbank/core/model/message/Sticker;

    return-void
.end method

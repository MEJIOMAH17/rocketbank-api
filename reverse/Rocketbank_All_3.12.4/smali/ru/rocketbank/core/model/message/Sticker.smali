.class public final Lru/rocketbank/core/model/message/Sticker;
.super Ljava/lang/Object;
.source "Sticker.kt"


# instance fields
.field private height:I

.field private permalink:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/core/model/message/Sticker;->height:I

    return v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/message/Sticker;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/core/model/message/Sticker;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/model/message/Sticker;->width:I

    return v0
.end method

.method public final setHeight(I)V
    .locals 0

    .line 6
    iput p1, p0, Lru/rocketbank/core/model/message/Sticker;->height:I

    return-void
.end method

.method public final setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/message/Sticker;->permalink:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lru/rocketbank/core/model/message/Sticker;->url:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 8
    iput p1, p0, Lru/rocketbank/core/model/message/Sticker;->width:I

    return-void
.end method

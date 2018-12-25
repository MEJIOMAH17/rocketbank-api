.class public final Lru/rocketbank/core/model/message/RatingAttachment;
.super Lru/rocketbank/core/model/message/Attachment;
.source "RatingAttachment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRatingAttachment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RatingAttachment.kt\nru/rocketbank/core/model/message/RatingAttachment\n*L\n1#1,16:1\n*E\n"
.end annotation


# instance fields
.field private admin:Lru/rocketbank/core/model/message/Admin;

.field private comment:Ljava/lang/String;

.field private rate:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/rocketbank/core/model/message/Attachment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdmin()Lru/rocketbank/core/model/message/Admin;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/message/RatingAttachment;->admin:Lru/rocketbank/core/model/message/Admin;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/model/message/RatingAttachment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()F
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/model/message/RatingAttachment;->rate:F

    return v0
.end method

.method public final getRating()Lru/rocketbank/core/network/model/Rating;
    .locals 5

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/message/RatingAttachment;->admin:Lru/rocketbank/core/model/message/Admin;

    if-eqz v0, :cond_0

    new-instance v1, Lru/rocketbank/core/network/model/Rating;

    iget v2, p0, Lru/rocketbank/core/model/message/RatingAttachment;->rate:F

    iget-object v3, p0, Lru/rocketbank/core/model/message/RatingAttachment;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Lru/rocketbank/core/model/message/Admin;->getPermalink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/core/model/message/RatingAttachment;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lru/rocketbank/core/network/model/Rating;-><init>(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setAdmin(Lru/rocketbank/core/model/message/Admin;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/message/RatingAttachment;->admin:Lru/rocketbank/core/model/message/Admin;

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/model/message/RatingAttachment;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setRate(F)V
    .locals 0

    .line 8
    iput p1, p0, Lru/rocketbank/core/model/message/RatingAttachment;->rate:F

    return-void
.end method

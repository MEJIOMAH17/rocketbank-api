.class public final Lru/rocketbank/core/model/PushData;
.super Ljava/lang/Object;
.source "PushData.kt"


# instance fields
.field private acme:Lru/rocketbank/core/model/push/Acme;

.field private alert:Ljava/lang/String;

.field private badge:I

.field private category:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private isMuted:Z

.field private sound:I

.field private sourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lru/rocketbank/core/model/PushData;->alert:Ljava/lang/String;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lru/rocketbank/core/model/PushData;->sound:I

    return-void
.end method


# virtual methods
.method public final getAcme()Lru/rocketbank/core/model/push/Acme;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/PushData;->acme:Lru/rocketbank/core/model/push/Acme;

    return-object v0
.end method

.method public final getAlert()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/core/model/PushData;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public final getBadge()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/core/model/PushData;->badge:I

    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/PushData;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/model/PushData;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSound()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/core/model/PushData;->sound:I

    return v0
.end method

.method public final getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/model/PushData;->sourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final isMuted()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lru/rocketbank/core/model/PushData;->isMuted:Z

    return v0
.end method

.method public final setAcme(Lru/rocketbank/core/model/push/Acme;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lru/rocketbank/core/model/PushData;->acme:Lru/rocketbank/core/model/push/Acme;

    return-void
.end method

.method public final setAlert(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lru/rocketbank/core/model/PushData;->alert:Ljava/lang/String;

    return-void
.end method

.method public final setBadge(I)V
    .locals 0

    .line 9
    iput p1, p0, Lru/rocketbank/core/model/PushData;->badge:I

    return-void
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/model/PushData;->category:Ljava/lang/String;

    return-void
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/core/model/PushData;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMuted(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lru/rocketbank/core/model/PushData;->isMuted:Z

    return-void
.end method

.method public final setSound(I)V
    .locals 0

    .line 11
    iput p1, p0, Lru/rocketbank/core/model/PushData;->sound:I

    return-void
.end method

.method public final setSourceBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/core/model/PushData;->sourceBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

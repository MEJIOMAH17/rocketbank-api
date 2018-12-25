.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;
.super Ljava/lang/Object;
.source "ParallaxImagePayload.kt"


# instance fields
.field private imageResId:I

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageResId()I
    .locals 1

    .line 4
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->imageResId:I

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setImageResId(I)V
    .locals 0

    .line 4
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->imageResId:I

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/ParallaxImagePayload;->imageUrl:Ljava/lang/String;

    return-void
.end method

.class public final Landroid/support/mediacompat/R$color;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder$8b2b29d$527e0935:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceDecoder$43461fc5:Landroid/support/mediacompat/R;

.field private final sourceEncoder$f0e4596:Landroid/support/compat/R$string;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder$743e27e$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    iput-object v0, p0, Landroid/support/mediacompat/R$color;->encoder$8b2b29d$527e0935:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1029
    new-instance v0, Landroid/support/compat/R$string;

    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-interface {p2}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/compat/R$string;-><init>(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Landroid/support/mediacompat/R$color;->sourceEncoder$f0e4596:Landroid/support/compat/R$string;

    .line 1031
    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/mediacompat/R$color;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 1032
    new-instance v0, Landroid/support/mediacompat/R;

    invoke-interface {p1}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object p1

    invoke-interface {p2}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/support/mediacompat/R;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Landroid/support/mediacompat/R$color;->sourceDecoder$43461fc5:Landroid/support/mediacompat/R;

    return-void
.end method


# virtual methods
.method public final getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Landroid/support/mediacompat/R$color;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public final getEncoder$743e27e$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Landroid/support/mediacompat/R$color;->encoder$8b2b29d$527e0935:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method public final getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Landroid/support/mediacompat/R$color;->sourceDecoder$43461fc5:Landroid/support/mediacompat/R;

    return-object v0
.end method

.method public final getSourceEncoder$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Landroid/support/mediacompat/R$color;->sourceEncoder$f0e4596:Landroid/support/compat/R$string;

    return-object v0
.end method

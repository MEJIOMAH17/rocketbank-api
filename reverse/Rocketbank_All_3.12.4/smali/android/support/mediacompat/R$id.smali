.class public final Landroid/support/mediacompat/R$id;
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
    name = "id"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder$152dc1a5:Landroid/support/mediacompat/R$integer;

.field private final encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceEncoder$3e7a537b:Landroid/support/constraint/R;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    new-instance v0, Landroid/support/constraint/R;

    invoke-direct {v0}, Landroid/support/constraint/R;-><init>()V

    iput-object v0, p0, Landroid/support/mediacompat/R$id;->sourceEncoder$3e7a537b:Landroid/support/constraint/R;

    .line 1029
    new-instance v0, Landroid/support/mediacompat/R$integer;

    invoke-direct {v0, p1, p2}, Landroid/support/mediacompat/R$integer;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Landroid/support/mediacompat/R$id;->decoder$152dc1a5:Landroid/support/mediacompat/R$integer;

    .line 1030
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object p1, p0, Landroid/support/mediacompat/R$id;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 1031
    new-instance p1, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    iget-object p2, p0, Landroid/support/mediacompat/R$id;->decoder$152dc1a5:Landroid/support/mediacompat/R$integer;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object p1, p0, Landroid/support/mediacompat/R$id;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

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

    .line 1036
    iget-object v0, p0, Landroid/support/mediacompat/R$id;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

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

    .line 1051
    iget-object v0, p0, Landroid/support/mediacompat/R$id;->encoder:Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method

.method public final getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Landroid/support/mediacompat/R$id;->decoder$152dc1a5:Landroid/support/mediacompat/R$integer;

    return-object v0
.end method

.method public final getSourceEncoder$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Landroid/support/mediacompat/R$id;->sourceEncoder$3e7a537b:Landroid/support/constraint/R;

    return-object v0
.end method

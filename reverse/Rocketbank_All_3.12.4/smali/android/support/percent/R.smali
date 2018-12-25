.class public final Landroid/support/percent/R;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/percent/R$styleable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

.field private final encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

.field private final sourceEncoder$3e7a537b:Landroid/support/constraint/R;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Landroid/support/percent/R;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    .line 1028
    new-instance p1, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    iget-object v0, p0, Landroid/support/percent/R;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    iput-object p1, p0, Landroid/support/percent/R;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    .line 1029
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object p1, p0, Landroid/support/percent/R;->encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    .line 1030
    new-instance p1, Landroid/support/constraint/R;

    invoke-direct {p1}, Landroid/support/constraint/R;-><init>()V

    iput-object p1, p0, Landroid/support/percent/R;->sourceEncoder$3e7a537b:Landroid/support/constraint/R;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object v0, p0, Landroid/support/percent/R;->cacheDecoder:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    return-object v0
.end method

.method public final getEncoder$743e27e$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Landroid/support/percent/R;->encoder:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;

    return-object v0
.end method

.method public final getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Landroid/support/percent/R;->decoder:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;

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

    .line 1045
    iget-object v0, p0, Landroid/support/percent/R;->sourceEncoder$3e7a537b:Landroid/support/constraint/R;

    return-object v0
.end method

.class public final Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_DECODER:Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;


# instance fields
.field private final cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder$527e0935:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;-><init>(B)V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/mediacompat/R$layout;

    invoke-direct {v0}, Landroid/support/mediacompat/R$layout;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 26
    new-instance v0, Landroid/support/constraint/R;

    invoke-direct {v0}, Landroid/support/constraint/R;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->encoder$527e0935:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public final getEncoder$743e27e$2e726854()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

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

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;->encoder$527e0935:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

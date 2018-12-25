.class public final Landroid/support/mediacompat/R$integer;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/mediacompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1

    .line 1039
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/mediacompat/R$integer;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p1, p0, Landroid/support/mediacompat/R$integer;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 1044
    iput-object p2, p0, Landroid/support/mediacompat/R$integer;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 1045
    iput-object p3, p0, Landroid/support/mediacompat/R$integer;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method


# virtual methods
.method public final bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2019
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    .line 2050
    iget-object v0, p0, Landroid/support/mediacompat/R$integer;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v2, p0, Landroid/support/mediacompat/R$integer;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v5, p0, Landroid/support/mediacompat/R$integer;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2051
    iget-object p2, p0, Landroid/support/mediacompat/R$integer;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3027
    :cond_0
    new-instance p3, Landroid/support/coreui/R$style;

    invoke-direct {p3, p1, p2}, Landroid/support/coreui/R$style;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object p3
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 1056
    iget-object v0, p0, Landroid/support/mediacompat/R$integer;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/mediacompat/R$integer;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/mediacompat/R$integer;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DecodeFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/mediacompat/R$integer;->id:Ljava/lang/String;

    .line 1063
    :cond_0
    iget-object v0, p0, Landroid/support/mediacompat/R$integer;->id:Ljava/lang/String;

    return-object v0
.end method

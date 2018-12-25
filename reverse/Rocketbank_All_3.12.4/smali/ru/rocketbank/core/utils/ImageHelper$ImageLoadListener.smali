.class public interface abstract Lru/rocketbank/core/utils/ImageHelper$ImageLoadListener;
.super Ljava/lang/Object;
.source "ImageHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/ImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLoadListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onLoad(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;)V
.end method

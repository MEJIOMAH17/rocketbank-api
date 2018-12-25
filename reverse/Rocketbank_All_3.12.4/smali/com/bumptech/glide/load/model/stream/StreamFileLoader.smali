.class public final Lcom/bumptech/glide/load/model/stream/StreamFileLoader;
.super Landroid/support/compat/R$layout;
.source "StreamFileLoader.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/compat/R$layout<",
        "Ljava/io/InputStream;",
        ">;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Landroid/support/compat/R$layout;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method

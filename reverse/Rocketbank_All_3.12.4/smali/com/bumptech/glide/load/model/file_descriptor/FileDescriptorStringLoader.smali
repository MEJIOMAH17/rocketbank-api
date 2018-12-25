.class public final Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;
.super Landroid/support/coreui/R;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/coreui/R<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
        "Ljava/lang/String;",
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
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Landroid/support/coreui/R;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method

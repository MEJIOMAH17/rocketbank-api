.class public final Lcom/bumptech/glide/DrawableTypeRequest;
.super Lcom/bumptech/glide/DrawableRequestBuilder;
.source "DrawableTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/DrawableRequestBuilder<",
        "TModelType;>;"
    }
.end annotation


# instance fields
.field private final fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

.field private final streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Landroid/support/v4/os/BuildCompat;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Landroid/support/v4/os/BuildCompat;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    move-object v9, p3

    move-object v4, p5

    .line 57
    const-class v0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    .line 1045
    :cond_0
    invoke-virtual {v4, v0, v1}, Lcom/bumptech/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    .line 1047
    const-class v2, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {v4, v2, v0}, Lcom/bumptech/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    .line 1049
    new-instance v2, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;

    invoke-direct {v2, v8, v9}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 1051
    new-instance v3, Landroid/support/v4/os/ParcelableCompat;

    invoke-direct {v3, v2, v1, v0}, Landroid/support/v4/os/ParcelableCompat;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    :goto_0
    move-object v0, v7

    move-object v1, p4

    move-object v2, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/DrawableRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Landroid/support/v4/os/BuildCompat;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 61
    iput-object v8, v7, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 62
    iput-object v9, v7, Lcom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    move-object/from16 v0, p8

    .line 63
    iput-object v0, v7, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

    return-void
.end method


# virtual methods
.method public final asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapTypeRequest<",
            "TModelType;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/bumptech/glide/BitmapTypeRequest;

    iget-object v1, p0, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v2, p0, Lcom/bumptech/glide/DrawableTypeRequest;->fileDescriptorModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bumptech/glide/BitmapTypeRequest;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/RequestManager;)V

    check-cast v0, Lcom/bumptech/glide/BitmapTypeRequest;

    return-object v0
.end method

.method public final downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .line 2107
    new-instance v7, Lcom/bumptech/glide/GenericTranscodeRequest;

    const-class v1, Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/DrawableTypeRequest;->streamModelLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    const-class v4, Ljava/io/InputStream;

    const-class v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bumptech/glide/DrawableTypeRequest;->optionsApplier$56025085:Lcom/bumptech/glide/RequestManager;

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/GenericTranscodeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager;)V

    check-cast v7, Lcom/bumptech/glide/GenericTranscodeRequest;

    .line 96
    invoke-virtual {v7, p1}, Lcom/bumptech/glide/GenericTranscodeRequest;->downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

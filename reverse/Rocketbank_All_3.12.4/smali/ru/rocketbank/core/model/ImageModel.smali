.class public final Lru/rocketbank/core/model/ImageModel;
.super Ljava/lang/Object;
.source "ImageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:I

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 19
    iget v0, p0, Lru/rocketbank/core/model/ImageModel;->height:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 15
    iget v0, p0, Lru/rocketbank/core/model/ImageModel;->id:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 27
    iget v0, p0, Lru/rocketbank/core/model/ImageModel;->width:I

    return v0
.end method

.method public final setHeight(I)V
    .locals 0

    .line 23
    iput p1, p0, Lru/rocketbank/core/model/ImageModel;->height:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 31
    iput p1, p0, Lru/rocketbank/core/model/ImageModel;->width:I

    return-void
.end method

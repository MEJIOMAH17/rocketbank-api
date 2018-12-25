.class public Lru/rocketbank/core/network/model/ProvidersResponse$Category;
.super Ljava/lang/Object;
.source "ProvidersResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/ProvidersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 101
    iget v0, p0, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 105
    iput p1, p0, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->name:Ljava/lang/String;

    return-void
.end method

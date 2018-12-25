.class public final Lru/rocketbank/core/network/model/PatchProfileAResponse;
.super Ljava/lang/Object;
.source "PatchProfileBody.kt"


# instance fields
.field private final response:Lru/rocketbank/core/model/dto/ResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResponse()Lru/rocketbank/core/model/dto/ResponseData;
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileAResponse;->response:Lru/rocketbank/core/model/dto/ResponseData;

    return-object v0
.end method

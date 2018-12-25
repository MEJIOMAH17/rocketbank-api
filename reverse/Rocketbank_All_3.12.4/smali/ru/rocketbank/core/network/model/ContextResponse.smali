.class public final Lru/rocketbank/core/network/model/ContextResponse;
.super Ljava/lang/Object;
.source "ContextResponse.kt"


# instance fields
.field private operation:Lru/rocketbank/core/model/dto/operations/Operation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOperation()Lru/rocketbank/core/model/dto/operations/Operation;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/model/ContextResponse;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-object v0
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/network/model/ContextResponse;->operation:Lru/rocketbank/core/model/dto/operations/Operation;

    return-void
.end method

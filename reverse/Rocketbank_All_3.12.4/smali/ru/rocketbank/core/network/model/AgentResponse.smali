.class public final Lru/rocketbank/core/network/model/AgentResponse;
.super Ljava/lang/Object;
.source "AgentResponse.kt"


# instance fields
.field private agent:Lru/rocketbank/core/model/Agent;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/Agent;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/network/model/AgentResponse;Lru/rocketbank/core/model/Agent;ILjava/lang/Object;)Lru/rocketbank/core/network/model/AgentResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    :cond_0
    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/model/AgentResponse;->copy(Lru/rocketbank/core/model/Agent;)Lru/rocketbank/core/network/model/AgentResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/core/model/Agent;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    return-object v0
.end method

.method public final copy(Lru/rocketbank/core/model/Agent;)Lru/rocketbank/core/network/model/AgentResponse;
    .locals 1

    new-instance v0, Lru/rocketbank/core/network/model/AgentResponse;

    invoke-direct {v0, p1}, Lru/rocketbank/core/network/model/AgentResponse;-><init>(Lru/rocketbank/core/model/Agent;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/network/model/AgentResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/network/model/AgentResponse;

    iget-object v0, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    iget-object p1, p1, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAgent()Lru/rocketbank/core/model/Agent;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setAgent(Lru/rocketbank/core/model/Agent;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AgentResponse(agent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/network/model/AgentResponse;->agent:Lru/rocketbank/core/model/Agent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

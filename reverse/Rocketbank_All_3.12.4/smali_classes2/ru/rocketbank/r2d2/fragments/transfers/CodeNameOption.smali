.class public final Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;",
        ">;"
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->copy(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1280
    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->compareTo(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;)I
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 1285
    :cond_0
    iget-object v0, p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1286
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    const-string v3, "00"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1287
    :cond_2
    iget-object v0, p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    const-string v2, "00"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1288
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    invoke-direct {v0, p1, p2}, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

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

.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 1280
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1280
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" \u2013 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/CodeNameOption;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

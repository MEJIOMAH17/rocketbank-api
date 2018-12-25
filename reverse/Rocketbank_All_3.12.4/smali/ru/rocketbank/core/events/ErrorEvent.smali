.class public final Lru/rocketbank/core/events/ErrorEvent;
.super Ljava/lang/Object;
.source "ErrorEvent.kt"


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private messageStringResource:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f110451

    iput v0, p0, Lru/rocketbank/core/events/ErrorEvent;->messageStringResource:I

    iput-object p1, p0, Lru/rocketbank/core/events/ErrorEvent;->exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/events/ErrorEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/events/ErrorEvent;

    iget v1, p0, Lru/rocketbank/core/events/ErrorEvent;->messageStringResource:I

    iget v3, p1, Lru/rocketbank/core/events/ErrorEvent;->messageStringResource:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/events/ErrorEvent;->exception:Ljava/lang/Throwable;

    iget-object p1, p1, Lru/rocketbank/core/events/ErrorEvent;->exception:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/events/ErrorEvent;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getMessageStringResource()I
    .locals 1

    .line 8
    iget v0, p0, Lru/rocketbank/core/events/ErrorEvent;->messageStringResource:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lru/rocketbank/core/events/ErrorEvent;->messageStringResource:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/events/ErrorEvent;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorEvent(messageStringResource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/events/ErrorEvent;->messageStringResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/events/ErrorEvent;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

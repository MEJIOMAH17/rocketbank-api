.class public final Lru/rocketbank/core/events/ResultPermissionEvent;
.super Ljava/lang/Object;
.source "ResultPermissionEvent.kt"


# instance fields
.field private final grantResults:[I

.field private final permissions:[Ljava/lang/String;

.field private requestCode:I


# direct methods
.method public constructor <init>(I[Ljava/lang/String;[I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->requestCode:I

    iput-object p2, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lru/rocketbank/core/events/ResultPermissionEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lru/rocketbank/core/events/ResultPermissionEvent;

    iget v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->requestCode:I

    iget v3, p1, Lru/rocketbank/core/events/ResultPermissionEvent;->requestCode:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    iget-object p1, p1, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final getGrantResults()[I
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    return-object v0
.end method

.method public final getPermissions()[Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestCode()I
    .locals 1

    .line 11
    iget v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->requestCode:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->requestCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isPermitted()Z
    .locals 6

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    if-nez v0, :cond_0

    goto :goto_3

    .line 18
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    const/4 v2, 0x1

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ltz v0, :cond_4

    move v3, v1

    move v4, v2

    .line 19
    :goto_0
    iget-object v5, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    aget v5, v5, v3

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eq v3, v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v2, v4

    :cond_4
    return v2

    :cond_5
    :goto_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResultPermissionEvent(requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->permissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", grantResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/events/ResultPermissionEvent;->grantResults:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

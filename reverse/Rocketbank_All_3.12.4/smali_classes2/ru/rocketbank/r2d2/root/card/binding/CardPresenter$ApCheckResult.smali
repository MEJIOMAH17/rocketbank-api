.class final Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;
.super Ljava/lang/Object;
.source "CardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApCheckResult"
.end annotation


# instance fields
.field private isDefault:Z

.field private pending:Z

.field private status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field private tur:Ljava/lang/String;

.field private walletId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    iput-boolean p4, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    iput-boolean p5, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    return-void
.end method

.method public synthetic constructor <init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-string p2, ""

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move v4, p3

    goto :goto_0

    :cond_2
    move v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v5, p3

    goto :goto_1

    :cond_3
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 102
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->copy(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZ)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    return v0
.end method

.method public final copy(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZ)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;
    .locals 7

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;-><init>(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    iget-object v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    iget-boolean v3, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    iget-boolean p1, p1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    if-ne v1, p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public final getPending()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    return v0
.end method

.method public final getStatus()Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    return-object v0
.end method

.method public final getTur()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    return-object v0
.end method

.method public final getWalletId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    return v0
.end method

.method public final setDefault(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    return-void
.end method

.method public final setPending(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    return-void
.end method

.method public final setStatus(Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    return-void
.end method

.method public final setTur(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    return-void
.end method

.method public final setWalletId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApCheckResult(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->status:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", walletId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->walletId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->tur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->isDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$ApCheckResult;->pending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lru/rocketbank/r2d2/fragments/profile/Item;
.super Ljava/lang/Object;
.source "Item.kt"


# instance fields
.field private id:I

.field private title:Ljava/lang/String;

.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    .line 11
    iput p2, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    .line 16
    iput p2, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    .line 17
    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->value:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 22
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/fragments/profile/Item;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lru/rocketbank/r2d2/fragments/profile/Item;

    .line 27
    iget v2, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    iget v3, p1, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    if-eq v2, v3, :cond_2

    return v0

    .line 28
    :cond_2
    iget v2, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    iget p1, p1, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    if-eq v2, p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 4
    iget v0, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 34
    iget v0, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget v1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setId(I)V
    .locals 0

    .line 4
    iput p1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->id:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 5
    iput p1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->type:I

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/Item;->value:Ljava/lang/String;

    return-void
.end method

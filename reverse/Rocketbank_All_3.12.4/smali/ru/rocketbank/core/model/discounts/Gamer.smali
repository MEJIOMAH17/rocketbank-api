.class public Lru/rocketbank/core/model/discounts/Gamer;
.super Ljava/lang/Object;
.source "Gamer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lru/rocketbank/core/model/discounts/Gamer;",
        ">;"
    }
.end annotation


# instance fields
.field public merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

.field public percent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lru/rocketbank/core/model/discounts/Gamer;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/discounts/Gamer;->compareTo(Lru/rocketbank/core/model/discounts/Gamer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lru/rocketbank/core/model/discounts/Gamer;)I
    .locals 1

    .line 18
    iget p1, p1, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    iget v0, p0, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    check-cast p1, Lru/rocketbank/core/model/discounts/Gamer;

    .line 37
    iget v2, p0, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    iget v3, p1, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    if-eq v2, v3, :cond_2

    return v1

    .line 38
    :cond_2
    iget-object v2, p0, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p1, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/discounts/Gamer;->merchant:Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget v1, p0, Lru/rocketbank/core/model/discounts/Gamer;->percent:I

    add-int/2addr v0, v1

    return v0
.end method

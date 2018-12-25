.class public Lru/rocketbank/r2d2/activities/operation/Item;
.super Ljava/lang/Object;
.source "Item.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 4
    iget v0, p0, Lru/rocketbank/r2d2/activities/operation/Item;->type:I

    return v0
.end method

.method public final setType(I)V
    .locals 0

    .line 4
    iput p1, p0, Lru/rocketbank/r2d2/activities/operation/Item;->type:I

    return-void
.end method

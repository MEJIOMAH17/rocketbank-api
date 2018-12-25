.class public final Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;
.super Ljava/lang/Object;
.source "SchemeItemData.kt"


# instance fields
.field private final isActive:Landroid/databinding/ObservableBoolean;

.field private final isCurrent:Landroid/databinding/ObservableBoolean;

.field private sound:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive:Landroid/databinding/ObservableBoolean;

    .line 12
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getSound()I
    .locals 1

    .line 13
    iget v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->sound:I

    return v0
.end method

.method public final isActive()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final isCurrent()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final setSound(I)V
    .locals 0

    .line 13
    iput p1, p0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->sound:I

    return-void
.end method

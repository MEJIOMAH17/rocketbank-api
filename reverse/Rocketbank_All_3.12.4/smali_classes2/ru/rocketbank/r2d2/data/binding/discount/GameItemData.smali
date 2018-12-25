.class public final Lru/rocketbank/r2d2/data/binding/discount/GameItemData;
.super Ljava/lang/Object;
.source "GameItemData.kt"


# instance fields
.field private final isYellow:Landroid/databinding/ObservableBoolean;

.field private final percent:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0, p1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;->percent:Landroid/databinding/ObservableInt;

    .line 13
    new-instance p1, Landroid/databinding/ObservableBoolean;

    invoke-direct {p1, p2}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;->isYellow:Landroid/databinding/ObservableBoolean;

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getPercent()Landroid/databinding/ObservableInt;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;->percent:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final isYellow()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/discount/GameItemData;->isYellow:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

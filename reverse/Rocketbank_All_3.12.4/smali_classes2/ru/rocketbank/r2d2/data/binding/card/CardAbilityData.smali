.class public final Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;
.super Ljava/lang/Object;
.source "CardAbilityData.kt"


# instance fields
.field private final nfcVisible:Landroid/databinding/ObservableInt;

.field private final orVisible:Landroid/databinding/ObservableInt;

.field private final photoVisible:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/databinding/ObservableInt;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->nfcVisible:Landroid/databinding/ObservableInt;

    .line 8
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->photoVisible:Landroid/databinding/ObservableInt;

    .line 9
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->orVisible:Landroid/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final getNfcVisible()Landroid/databinding/ObservableInt;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->nfcVisible:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getOrVisible()Landroid/databinding/ObservableInt;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->orVisible:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getPhotoVisible()Landroid/databinding/ObservableInt;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->photoVisible:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final updateAbility(ZZ)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 13
    iget-object v2, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->orVisible:Landroid/databinding/ObservableInt;

    invoke-virtual {v2, v1}, Landroid/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->orVisible:Landroid/databinding/ObservableInt;

    invoke-virtual {v2, v0}, Landroid/databinding/ObservableInt;->set(I)V

    .line 17
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->nfcVisible:Landroid/databinding/ObservableInt;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/databinding/ObservableInt;->set(I)V

    .line 18
    iget-object p1, p0, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->photoVisible:Landroid/databinding/ObservableInt;

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method

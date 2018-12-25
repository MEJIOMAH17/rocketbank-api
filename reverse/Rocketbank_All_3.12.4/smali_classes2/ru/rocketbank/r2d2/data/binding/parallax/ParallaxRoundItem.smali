.class public final Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;
.super Ljava/lang/Object;
.source "ParallaxRoundItem.kt"


# instance fields
.field private final imageResId:Landroid/databinding/ObservableInt;

.field private final subText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->imageResId:Landroid/databinding/ObservableInt;

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->text:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->subText:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getImageResId()Landroid/databinding/ObservableInt;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->imageResId:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getSubText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->subText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxRoundItem;->text:Landroid/databinding/ObservableField;

    return-object v0
.end method

.class public Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;
.super Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;
.source "ParallaxData.kt"


# instance fields
.field private final floatingButtonTranslation:Landroid/databinding/ObservableInt;

.field private final overlayTranslation:Landroid/databinding/ObservableInt;

.field private final parallaxTranslation:Landroid/databinding/ObservableInt;

.field private final toolbarTranslation:Landroid/databinding/ObservableInt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lru/rocketbank/r2d2/data/binding/parallax/HeaderData;-><init>()V

    .line 7
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->overlayTranslation:Landroid/databinding/ObservableInt;

    .line 8
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->parallaxTranslation:Landroid/databinding/ObservableInt;

    .line 9
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->toolbarTranslation:Landroid/databinding/ObservableInt;

    .line 10
    new-instance v0, Landroid/databinding/ObservableInt;

    invoke-direct {v0}, Landroid/databinding/ObservableInt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->floatingButtonTranslation:Landroid/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final getFloatingButtonTranslation()Landroid/databinding/ObservableInt;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->floatingButtonTranslation:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getOverlayTranslation()Landroid/databinding/ObservableInt;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->overlayTranslation:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getParallaxTranslation()Landroid/databinding/ObservableInt;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->parallaxTranslation:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getToolbarTranslation()Landroid/databinding/ObservableInt;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;->toolbarTranslation:Landroid/databinding/ObservableInt;

    return-object v0
.end method

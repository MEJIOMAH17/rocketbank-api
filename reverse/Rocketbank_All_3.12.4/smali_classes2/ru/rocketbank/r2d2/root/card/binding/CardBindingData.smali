.class public final Lru/rocketbank/r2d2/root/card/binding/CardBindingData;
.super Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;
.source "CardBindingData.kt"


# instance fields
.field private final balance:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cardNumber:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isRoubleCard:Landroid/databinding/ObservableBoolean;

.field private final titleBalance:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final titleName:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final toolbarBackDrawable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final toolbarWhiteBackDrawable:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;-><init>()V

    .line 9
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->toolbarWhiteBackDrawable:Landroid/databinding/ObservableField;

    .line 10
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->toolbarBackDrawable:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->titleName:Landroid/databinding/ObservableField;

    .line 13
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->titleBalance:Landroid/databinding/ObservableField;

    .line 14
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->balance:Landroid/databinding/ObservableField;

    .line 15
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->cardNumber:Landroid/databinding/ObservableField;

    .line 16
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->isRoubleCard:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getBalance()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->balance:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCardNumber()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->cardNumber:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getTitleBalance()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->titleBalance:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getTitleName()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->titleName:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getToolbarBackDrawable()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->toolbarBackDrawable:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getToolbarWhiteBackDrawable()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->toolbarWhiteBackDrawable:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final isRoubleCard()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/binding/CardBindingData;->isRoubleCard:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

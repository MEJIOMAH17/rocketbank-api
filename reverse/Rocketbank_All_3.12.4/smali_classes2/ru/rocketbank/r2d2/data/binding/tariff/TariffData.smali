.class public final Lru/rocketbank/r2d2/data/binding/tariff/TariffData;
.super Ljava/lang/Object;
.source "TariffData.kt"


# instance fields
.field private final buttonColor:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonText:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isButtonActivate:Landroid/databinding/ObservableBoolean;

.field private final isSalary:Landroid/databinding/ObservableBoolean;

.field private final name:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final priceLabel:Landroid/databinding/ObservableField;
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
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->name:Landroid/databinding/ObservableField;

    .line 14
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->priceLabel:Landroid/databinding/ObservableField;

    .line 15
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroid/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isButtonActivate:Landroid/databinding/ObservableBoolean;

    .line 16
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->buttonText:Landroid/databinding/ObservableField;

    .line 17
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->buttonColor:Landroid/databinding/ObservableField;

    .line 18
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isSalary:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getButtonColor()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->buttonColor:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getButtonText()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->buttonText:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getName()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->name:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getPriceLabel()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->priceLabel:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final isButtonActivate()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isButtonActivate:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final isSalary()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isSalary:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

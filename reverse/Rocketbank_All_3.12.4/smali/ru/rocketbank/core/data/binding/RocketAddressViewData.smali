.class public final Lru/rocketbank/core/data/binding/RocketAddressViewData;
.super Ljava/lang/Object;
.source "RocketAddressViewData.kt"


# instance fields
.field private final addressTextHint:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backButtonColor:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final backButtonEnabled:Landroid/databinding/ObservableBoolean;

.field private final backButtonVisible:Landroid/databinding/ObservableBoolean;

.field private final errorVisible:Landroid/databinding/ObservableBoolean;

.field private isAddress:Z

.field private final nextButtonColor:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final nextButtonEnabled:Landroid/databinding/ObservableBoolean;

.field private final nextButtonVisible:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->backButtonEnabled:Landroid/databinding/ObservableBoolean;

    .line 13
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->backButtonVisible:Landroid/databinding/ObservableBoolean;

    .line 14
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->backButtonColor:Landroid/databinding/ObservableField;

    .line 16
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->addressTextHint:Landroid/databinding/ObservableField;

    .line 18
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->nextButtonEnabled:Landroid/databinding/ObservableBoolean;

    .line 19
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->nextButtonVisible:Landroid/databinding/ObservableBoolean;

    .line 20
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->nextButtonColor:Landroid/databinding/ObservableField;

    .line 21
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->errorVisible:Landroid/databinding/ObservableBoolean;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->isAddress:Z

    return-void
.end method


# virtual methods
.method public final getAddressTextHint()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->addressTextHint:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getBackButtonColor()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->backButtonColor:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getBackButtonEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->backButtonEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getBackButtonVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->backButtonVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getErrorVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->errorVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getNextButtonColor()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->nextButtonColor:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getNextButtonEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->nextButtonEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getNextButtonVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->nextButtonVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final isAddress()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->isAddress:Z

    return v0
.end method

.method public final setAddress(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lru/rocketbank/core/data/binding/RocketAddressViewData;->isAddress:Z

    return-void
.end method

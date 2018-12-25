.class public final Lru/rocketbank/r2d2/data/binding/MapData;
.super Ljava/lang/Object;
.source "MapData.kt"


# instance fields
.field private final atmsAddress:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final atmsName:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final atmsWorkingTime:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final commissionAtmsSwitcherVisible:Landroid/databinding/ObservableBoolean;

.field private final detailsHeight:Landroid/databinding/ObservableInt;

.field private final instructionType:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;",
            ">;"
        }
    .end annotation
.end field

.field private final limits:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final limitsVisible:Landroid/databinding/ObservableBoolean;

.field private final showMyLocation:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->detailsHeight:Landroid/databinding/ObservableInt;

    .line 10
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->atmsName:Landroid/databinding/ObservableField;

    .line 11
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->atmsAddress:Landroid/databinding/ObservableField;

    .line 12
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->atmsWorkingTime:Landroid/databinding/ObservableField;

    .line 13
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->instructionType:Landroid/databinding/ObservableField;

    .line 14
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->limits:Landroid/databinding/ObservableField;

    .line 15
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->commissionAtmsSwitcherVisible:Landroid/databinding/ObservableBoolean;

    .line 17
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->limitsVisible:Landroid/databinding/ObservableBoolean;

    .line 19
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->showMyLocation:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getAtmsAddress()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->atmsAddress:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getAtmsName()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->atmsName:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getAtmsWorkingTime()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->atmsWorkingTime:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getCommissionAtmsSwitcherVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->commissionAtmsSwitcherVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getDetailsHeight()Landroid/databinding/ObservableInt;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->detailsHeight:Landroid/databinding/ObservableInt;

    return-object v0
.end method

.method public final getInstructionType()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Lru/rocketbank/r2d2/fragments/refill/cash/AtmInstructionType;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->instructionType:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getLimits()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->limits:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getLimitsVisible()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->limitsVisible:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getShowMyLocation()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/MapData;->showMyLocation:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

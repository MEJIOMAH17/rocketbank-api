.class public final Lru/rocketbank/r2d2/data/binding/delivery/DeliveryTimeData;
.super Ljava/lang/Object;
.source "DeliveryTimeData.kt"


# instance fields
.field private final currentDate:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nextButtonEnabled:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryTimeData;->currentDate:Landroid/databinding/ObservableField;

    .line 11
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryTimeData;->nextButtonEnabled:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getCurrentDate()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryTimeData;->currentDate:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getNextButtonEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryTimeData;->nextButtonEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.class public final Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;
.super Ljava/lang/Object;
.source "RocketCafeData.kt"


# instance fields
.field private final amount:Landroid/databinding/ObservableField;
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;->amount:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getAmount()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/data/binding/kitchen/RocketCafeData;->amount:Landroid/databinding/ObservableField;

    return-object v0
.end method

.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;
.super Ljava/lang/Object;
.source "StatisticData.kt"


# instance fields
.field private final modeName:Landroid/databinding/ObservableField;
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

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;->modeName:Landroid/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public final getModeName()Landroid/databinding/ObservableField;
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
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/statistics/StatisticData;->modeName:Landroid/databinding/ObservableField;

    return-object v0
.end method

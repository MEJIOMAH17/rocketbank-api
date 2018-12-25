.class public abstract Lru/rocketbank/core/widgets/BarChartView$Adapter;
.super Ljava/lang/Object;
.source "BarChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/BarChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field private final dataObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$Adapter;->dataObservable:Landroid/database/DataSetObservable;

    return-void
.end method

.method public static getNearMax5(D)D
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const-wide v1, 0x40b3880000000000L    # 5000.0

    :goto_0
    cmpg-double v3, v1, p0

    if-gez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v1, v0, 0x1388

    int-to-double v1, v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public abstract getColor(I)I
.end method

.method public abstract getCount()I
.end method

.method public abstract getHit(I)Ljava/lang/String;
.end method

.method public abstract getId(I)J
.end method

.method public abstract getLabelName(I)Ljava/lang/String;
.end method

.method getObservable()Landroid/database/DataSetObservable;
    .locals 1

    .line 136
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$Adapter;->dataObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getProportialSize(I)F
.end method

.method public abstract getValue(I)Ljava/lang/String;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$Adapter;->dataObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/widgets/BarChartView$Adapter;->dataObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

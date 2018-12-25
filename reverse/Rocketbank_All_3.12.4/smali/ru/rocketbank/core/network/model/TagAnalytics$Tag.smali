.class public final Lru/rocketbank/core/network/model/TagAnalytics$Tag;
.super Ljava/lang/Object;
.source "TagAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/TagAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# instance fields
.field private currentMonth:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_month"
    .end annotation
.end field

.field private months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private previousMonth:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previous_month"
    .end annotation
.end field

.field private total:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentMonth()F
    .locals 1

    .line 31
    iget v0, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->currentMonth:F

    return v0
.end method

.method public final getMonths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->months:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPreviousMonth()F
    .locals 1

    .line 34
    iget v0, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->previousMonth:F

    return v0
.end method

.method public final getTotal()F
    .locals 1

    .line 36
    iget v0, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->total:F

    return v0
.end method

.method public final setCurrentMonth(F)V
    .locals 0

    .line 31
    iput p1, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->currentMonth:F

    return-void
.end method

.method public final setMonths(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->months:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPreviousMonth(F)V
    .locals 0

    .line 34
    iput p1, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->previousMonth:F

    return-void
.end method

.method public final setTotal(F)V
    .locals 0

    .line 36
    iput p1, p0, Lru/rocketbank/core/network/model/TagAnalytics$Tag;->total:F

    return-void
.end method

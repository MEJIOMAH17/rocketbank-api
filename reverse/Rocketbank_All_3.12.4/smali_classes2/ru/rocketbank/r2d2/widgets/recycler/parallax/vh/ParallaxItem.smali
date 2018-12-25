.class public Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;
.super Ljava/lang/Object;
.source "ParallaxItem.kt"


# instance fields
.field private barChartAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

.field private feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field private hideArrow:Z

.field private id:I

.field private link:Ljava/lang/String;

.field private onBind:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSwitch:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private operation:Lru/rocketbank/core/model/AbstractOperation;

.field private payload:Ljava/lang/Object;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->type:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 31
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 35
    :cond_0
    instance-of v0, p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 39
    :cond_1
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->viewType:I

    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    iget v3, p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->viewType:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->id:I

    iget v3, p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->id:I

    if-ne v0, v3, :cond_2

    iget p1, p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->type:I

    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->type:I

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final getBarChartAdapter()Lru/rocketbank/core/widgets/BarChartView$Adapter;
    .locals 1

    .line 25
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->barChartAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    return-object v0
.end method

.method public final getFeedItem()Lru/rocketbank/core/network/model/FeedItem;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-object v0
.end method

.method public final getHideArrow()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->hideArrow:Z

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->id:I

    return v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnBind()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->onBind:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->onClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSwitch()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Ljava/lang/Boolean;",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->onSwitch:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getOperation()Lru/rocketbank/core/model/AbstractOperation;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 10
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->type:I

    return v0
.end method

.method public final getTypedOperation()Lru/rocketbank/core/model/AbstractOperation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lru/rocketbank/core/model/AbstractOperation;",
            ">()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->viewType:I

    return v0
.end method

.method public final setBarChartAdapter(Lru/rocketbank/core/widgets/BarChartView$Adapter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->barChartAdapter:Lru/rocketbank/core/widgets/BarChartView$Adapter;

    return-void
.end method

.method public final setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method public final setHideArrow(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->hideArrow:Z

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 9
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->id:I

    return-void
.end method

.method public final setLink(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->link:Ljava/lang/String;

    return-void
.end method

.method public final setOnBind(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->onBind:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnClick(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->onClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSwitch(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->onSwitch:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/AbstractOperation;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->operation:Lru/rocketbank/core/model/AbstractOperation;

    return-void
.end method

.method public final setPayload(Ljava/lang/Object;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->payload:Ljava/lang/Object;

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 10
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->type:I

    return-void
.end method

.method public final setViewType(I)V
    .locals 0

    .line 12
    iput p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->viewType:I

    return-void
.end method

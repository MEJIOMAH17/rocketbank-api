.class final Lru/rocketbank/core/widgets/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/WheelView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/WheelView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/WheelView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/WheelView;->getScrollY()I

    move-result v0

    .line 118
    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v1, v1, Lru/rocketbank/core/widgets/WheelView;->initialY:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v0, v0, Lru/rocketbank/core/widgets/WheelView;->initialY:I

    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v1, v1, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    rem-int/2addr v0, v1

    .line 120
    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v1, v1, Lru/rocketbank/core/widgets/WheelView;->initialY:I

    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v2, v2, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    div-int/2addr v1, v2

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v2, v0, Lru/rocketbank/core/widgets/WheelView;->offset:I

    add-int/2addr v1, v2

    iput v1, v0, Lru/rocketbank/core/widgets/WheelView;->selectedIndex:I

    .line 126
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/WheelView;->access$000(Lru/rocketbank/core/widgets/WheelView;)V

    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v2, v2, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 129
    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    new-instance v3, Lru/rocketbank/core/widgets/WheelView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lru/rocketbank/core/widgets/WheelView$1$1;-><init>(Lru/rocketbank/core/widgets/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    new-instance v3, Lru/rocketbank/core/widgets/WheelView$1$2;

    invoke-direct {v3, p0, v0, v1}, Lru/rocketbank/core/widgets/WheelView$1$2;-><init>(Lru/rocketbank/core/widgets/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/WheelView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/WheelView;->getScrollY()I

    move-result v1

    iput v1, v0, Lru/rocketbank/core/widgets/WheelView;->initialY:I

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget-object v1, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget-object v1, v1, Lru/rocketbank/core/widgets/WheelView;->scrollerTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView$1;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v2, v2, Lru/rocketbank/core/widgets/WheelView;->newCheck:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/core/widgets/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

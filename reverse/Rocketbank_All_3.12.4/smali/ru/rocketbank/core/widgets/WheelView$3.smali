.class final Lru/rocketbank/core/widgets/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/WheelView;->setSeletion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/WheelView;

.field final synthetic val$p:I


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/WheelView;I)V
    .locals 0

    .line 377
    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView$3;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iput p2, p0, Lru/rocketbank/core/widgets/WheelView$3;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 380
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$3;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v1, p0, Lru/rocketbank/core/widgets/WheelView$3;->val$p:I

    iget-object v2, p0, Lru/rocketbank/core/widgets/WheelView$3;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v2, v2, Lru/rocketbank/core/widgets/WheelView;->itemHeight:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lru/rocketbank/core/widgets/WheelView;->smoothScrollTo(II)V

    return-void
.end method

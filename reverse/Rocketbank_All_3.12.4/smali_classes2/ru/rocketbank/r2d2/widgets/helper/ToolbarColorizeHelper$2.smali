.class final Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;
.super Ljava/lang/Object;
.source "ToolbarColorizeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper;->setOverflowButtonColor(Landroid/app/Activity;Landroid/graphics/PorterDuffColorFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$overflowDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;->val$decorView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;->val$overflowDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;->val$decorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;->val$overflowDescription:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper$2;->val$decorView:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lru/rocketbank/r2d2/widgets/helper/ToolbarColorizeHelper;->access$000(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

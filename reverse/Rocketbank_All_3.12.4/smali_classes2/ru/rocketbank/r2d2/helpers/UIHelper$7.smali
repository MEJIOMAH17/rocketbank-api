.class final Lru/rocketbank/r2d2/helpers/UIHelper$7;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/UIHelper;->setOverflowButtonColor(Landroid/app/Activity;Landroid/graphics/PorterDuffColorFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$overflowDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/PorterDuffColorFilter;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$decorView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$overflowDescription:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$decorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$overflowDescription:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 275
    iget-object v1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 276
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/UIHelper$7;->val$decorView:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lru/rocketbank/r2d2/helpers/UIHelper;->access$200(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

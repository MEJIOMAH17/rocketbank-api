.class final Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/util/KeyboardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->access$000(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 68
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->access$000(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 69
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-static {v2}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 77
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-static {v2}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/util/KeyboardUtil$1;->this$0:Lcom/mikepenz/materialdrawer/util/KeyboardUtil;

    invoke-static {v1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->access$100(Lcom/mikepenz/materialdrawer/util/KeyboardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

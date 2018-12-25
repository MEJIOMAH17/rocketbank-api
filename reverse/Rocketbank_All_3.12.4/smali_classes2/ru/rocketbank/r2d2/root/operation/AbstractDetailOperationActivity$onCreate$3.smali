.class final Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$3;
.super Ljava/lang/Object;
.source "AbstractDetailOperationActivity.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->getBinding()Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    move-result-object p1

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;->operation:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    invoke-virtual {p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestFocus()Z

    .line 124
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    const/4 p1, 0x0

    return p1
.end method

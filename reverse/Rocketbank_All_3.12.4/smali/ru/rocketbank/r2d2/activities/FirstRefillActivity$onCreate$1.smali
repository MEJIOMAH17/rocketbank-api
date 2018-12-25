.class final Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;
.super Ljava/lang/Object;
.source "FirstRefillActivity.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/FirstRefillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/FirstRefillActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/FirstRefillActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/FirstRefillActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "motionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;->$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/FirstRefillActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/activities/FirstRefillActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

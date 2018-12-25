.class public final Lru/rocketbank/r2d2/helpers/KeyboardHelper;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {v0, p0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->set(ZLandroid/widget/EditText;)V

    return-void
.end method

.method private static set(ZLandroid/widget/EditText;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 19
    invoke-virtual {v0, p1, p0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static show(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-static {v0, p0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->set(ZLandroid/widget/EditText;)V

    return-void
.end method

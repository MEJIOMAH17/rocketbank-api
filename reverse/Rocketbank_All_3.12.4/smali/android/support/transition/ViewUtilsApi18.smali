.class Landroid/support/transition/ViewUtilsApi18;
.super Landroid/support/transition/ViewUtilsApi14;
.source "ViewUtilsApi18.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi14;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .locals 1

    .line 33
    new-instance v0, Landroid/support/transition/WindowIdApi18;

    invoke-direct {v0, p1}, Landroid/support/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    return-object v0
.end method

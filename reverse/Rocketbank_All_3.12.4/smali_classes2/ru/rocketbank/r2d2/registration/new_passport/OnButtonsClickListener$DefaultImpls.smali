.class public final Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$DefaultImpls;
.super Ljava/lang/Object;
.source "OnButtonsClickListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static bottomButtonClicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$bottomButtonClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$bottomButtonClicked$1;-><init>(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1, v0}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$DefaultImpls;->clicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static clicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static mainClicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$mainClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$mainClicked$1;-><init>(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1, v0}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$DefaultImpls;->clicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

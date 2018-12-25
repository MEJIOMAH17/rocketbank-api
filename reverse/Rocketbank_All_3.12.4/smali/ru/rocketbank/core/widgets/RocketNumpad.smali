.class public final Lru/rocketbank/core/widgets/RocketNumpad;
.super Landroid/widget/LinearLayout;
.source "RocketNumpad.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;
    }
.end annotation


# instance fields
.field private _listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

.field private final clear:Landroid/view/View;

.field private final reset:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 21
    invoke-virtual {p0, p2}, Lru/rocketbank/core/widgets/RocketNumpad;->setOrientation(I)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 24
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0c019d

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0902e0

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketNumpad;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->reset:Landroid/view/View;

    const p1, 0x7f0900db

    .line 30
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketNumpad;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    .line 31
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900dc

    .line 32
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketNumpad;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.clear_frame)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    .line 1069
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1071
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketNumpad;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    if-ltz p1, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 38
    :goto_0
    invoke-virtual {p0, v1}, Lru/rocketbank/core/widgets/RocketNumpad;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v2, Landroid/widget/LinearLayout;

    .line 40
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    if-ltz v3, :cond_4

    move v4, v0

    .line 42
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 44
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 45
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 47
    instance-of v6, v5, Lru/rocketbank/core/widgets/RocketNumpadButton;

    if-eqz v6, :cond_3

    .line 48
    move-object v6, v5

    check-cast v6, Lru/rocketbank/core/widgets/RocketNumpadButton;

    new-instance v7, Lru/rocketbank/core/widgets/RocketNumpad$1;

    invoke-direct {v7, p0, v5}, Lru/rocketbank/core/widgets/RocketNumpad$1;-><init>(Lru/rocketbank/core/widgets/RocketNumpad;Landroid/view/View;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lru/rocketbank/core/widgets/RocketNumpadButton;->setOnPressed(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eq v4, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eq v1, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static final synthetic access$get_listener$p(Lru/rocketbank/core/widgets/RocketNumpad;)Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lru/rocketbank/core/widgets/RocketNumpad;->_listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    return-object p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902e0

    if-ne p1, v0, :cond_1

    .line 77
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->_listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->_listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;->onReset()V

    return-void

    :cond_1
    const v0, 0x7f0900db

    if-ne p1, v0, :cond_3

    .line 81
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->_listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->_listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {p1}, Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;->onClear()V

    :cond_3
    return-void
.end method

.method public final setEraseEnabled(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 71
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->clear:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOnNumberListener(Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad;->_listener:Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    return-void
.end method

.method public final setResetEnabled(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketNumpad;->reset:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

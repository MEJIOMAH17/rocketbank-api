.class public final Lru/rocketbank/core/widgets/RocketAutofitTextView;
.super Lme/grantland/widget/AutofitTextView;
.source "RocketAutofitTextView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lme/grantland/widget/AutofitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1022
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1023
    invoke-static {}, Lru/rocketbank/core/manager/TypefaceManager;->getInstance()Lru/rocketbank/core/manager/TypefaceManager;

    move-result-object p1

    sget v0, Lru/rocketbank/core/R$styleable;->RocketAutofitTextView_rocket_font:I

    sget-object v1, Lru/rocketbank/core/R$styleable;->RocketAutofitTextView:[I

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, p2, v2}, Lru/rocketbank/core/manager/TypefaceManager;->setTypeface$6871d432(I[ILandroid/util/AttributeSet;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

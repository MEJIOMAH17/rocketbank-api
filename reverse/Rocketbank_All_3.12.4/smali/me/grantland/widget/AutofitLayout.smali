.class public Lme/grantland/widget/AutofitLayout;
.super Landroid/widget/FrameLayout;
.source "AutofitLayout.java"


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    check-cast p1, Landroid/widget/TextView;

    .line 71
    invoke-static {p1}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;)Lme/grantland/widget/AutofitHelper;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    move-result-object p2

    const/4 p3, 0x0

    .line 79
    invoke-virtual {p3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

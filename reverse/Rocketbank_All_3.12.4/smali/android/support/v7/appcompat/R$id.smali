.class public Landroid/support/v7/appcompat/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# instance fields
.field private mColorInt:I

.field private mColorRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1020
    iput v0, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    const/4 v0, -0x1

    .line 1021
    iput v0, p0, Landroid/support/v7/appcompat/R$id;->mColorRes:I

    return-void
.end method

.method public static applyToOr$d8581ce(Landroid/support/v7/appcompat/R$id;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 6090
    iget v0, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    if-eqz v0, :cond_0

    .line 6091
    iget p0, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 6092
    :cond_0
    iget v0, p0, Landroid/support/v7/appcompat/R$id;->mColorRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6093
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p0, p0, Landroid/support/v7/appcompat/R$id;->mColorRes:I

    invoke-static {p2, p0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 6095
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 5173
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public static color$54b3a3d9(Landroid/support/v7/appcompat/R$id;Landroid/content/Context;II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 3033
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 3034
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3035
    iget v0, p0, Landroid/util/TypedValue;->data:I

    :cond_0
    if-nez v0, :cond_1

    .line 2051
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_1
    return v0

    .line 3124
    :cond_2
    iget v2, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/support/v7/appcompat/R$id;->mColorRes:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 3125
    iget v2, p0, Landroid/support/v7/appcompat/R$id;->mColorRes:I

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    .line 3127
    :cond_3
    iget p0, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    if-nez p0, :cond_6

    .line 5033
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 5034
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5035
    iget v0, p0, Landroid/util/TypedValue;->data:I

    :cond_4
    if-nez v0, :cond_5

    .line 4051
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_5
    return v0

    :cond_6
    return p0
.end method


# virtual methods
.method public final setColorInt(I)V
    .locals 0

    .line 1032
    iput p1, p0, Landroid/support/v7/appcompat/R$id;->mColorInt:I

    return-void
.end method

.method public final setColorRes(I)V
    .locals 0

    .line 1040
    iput p1, p0, Landroid/support/v7/appcompat/R$id;->mColorRes:I

    return-void
.end method

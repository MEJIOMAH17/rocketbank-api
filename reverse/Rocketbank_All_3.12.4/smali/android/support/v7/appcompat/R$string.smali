.class public Landroid/support/v7/appcompat/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;

.field private mTextRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2013
    iput v0, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    .line 2020
    iput p1, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1013
    iput v0, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    .line 1016
    iput-object p1, p0, Landroid/support/v7/appcompat/R$string;->mText:Ljava/lang/String;

    return-void
.end method

.method public static applyTo$3730f3ac(Landroid/support/v7/appcompat/R$string;Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 3040
    iget-object v0, p0, Landroid/support/v7/appcompat/R$string;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3041
    iget-object p0, p0, Landroid/support/v7/appcompat/R$string;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3042
    :cond_0
    iget v0, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3043
    iget p0, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const-string p0, ""

    .line 3045
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static applyToOrHide$3730f3a8(Landroid/support/v7/appcompat/R$string;Landroid/widget/TextView;)Z
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 4050
    iget-object v2, p0, Landroid/support/v7/appcompat/R$string;->mText:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4051
    iget-object p0, p0, Landroid/support/v7/appcompat/R$string;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4052
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return v3

    .line 4054
    :cond_0
    iget v2, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 4055
    iget p0, p0, Landroid/support/v7/appcompat/R$string;->mTextRes:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 4056
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return v3

    .line 4059
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3084
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return v1

    :cond_3
    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 4092
    iget-object v0, p0, Landroid/support/v7/appcompat/R$string;->mText:Ljava/lang/String;

    return-object v0
.end method

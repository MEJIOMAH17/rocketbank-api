.class public Lme/grantland/widget/AutofitTextView;
.super Landroid/widget/TextView;
.source "AutofitTextView.java"

# interfaces
.implements Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;


# instance fields
.field private mHelper:Lme/grantland/widget/AutofitHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1035
    invoke-static {p0, p1, v0}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme/grantland/widget/AutofitHelper;->addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    iput-object p1, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2035
    invoke-static {p0, p2, p1}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme/grantland/widget/AutofitHelper;->addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    iput-object p1, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3035
    invoke-static {p0, p2, p3}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme/grantland/widget/AutofitHelper;->addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    iput-object p1, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    return-void
.end method


# virtual methods
.method public setLines(I)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 58
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxLines(I)Lme/grantland/widget/AutofitHelper;

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxLines(I)Lme/grantland/widget/AutofitHelper;

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/AutofitHelper;->setTextSize(IF)V

    :cond_0
    return-void
.end method

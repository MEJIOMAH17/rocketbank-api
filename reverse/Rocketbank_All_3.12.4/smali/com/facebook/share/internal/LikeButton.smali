.class public Lcom/facebook/share/internal/LikeButton;
.super Lcom/facebook/FacebookButtonBase;
.source "LikeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    const-string v5, "fb_like_button_create"

    const-string v6, "fb_like_button_did_tap"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    return-void
.end method

.method private updateForLikeStatus()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    sget v0, Lcom/facebook/R$drawable;->com_facebook_button_like_icon_selected:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->com_facebook_like_button_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 74
    :cond_0
    sget v0, Lcom/facebook/R$drawable;->com_facebook_button_icon:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->com_facebook_like_button_not_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeButton;->updateForLikeStatus()V

    return-void
.end method

.method protected getDefaultRequestCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .line 64
    sget v0, Lcom/facebook/R$style;->com_facebook_button_like:I

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setSelected(Z)V

    .line 44
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeButton;->updateForLikeStatus()V

    return-void
.end method

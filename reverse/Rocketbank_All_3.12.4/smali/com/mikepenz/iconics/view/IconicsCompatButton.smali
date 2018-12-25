.class public Lcom/mikepenz/iconics/view/IconicsCompatButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "IconicsCompatButton.java"


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/view/IconicsCompatButton;->setAllCaps(Z)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsCompatButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    invoke-direct {v0}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsCompatButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Ljava/lang/CharSequence;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->build()Landroid/text/Spanned;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    .line 37
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

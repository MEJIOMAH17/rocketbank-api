.class public Lcom/mikepenz/iconics/view/IconicsTextView;
.super Landroid/widget/TextView;
.source "IconicsTextView.java"


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    invoke-direct {v0}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->on(Ljava/lang/CharSequence;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->build()Landroid/text/Spanned;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    .line 44
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

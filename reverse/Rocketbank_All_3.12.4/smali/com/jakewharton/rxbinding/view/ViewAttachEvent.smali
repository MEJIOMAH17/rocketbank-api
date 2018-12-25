.class public final Lcom/jakewharton/rxbinding/view/ViewAttachEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "ViewAttachEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 39
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    .line 40
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 1033
    iget-object p1, p1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    .line 2033
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 3033
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    .line 47
    invoke-virtual {v0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewAttachEvent{view="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

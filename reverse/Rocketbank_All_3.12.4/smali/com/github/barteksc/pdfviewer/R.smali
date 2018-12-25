.class public final Lcom/github/barteksc/pdfviewer/R;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lio/realm/internal/Capabilities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/R$drawable;
    }
.end annotation


# instance fields
.field private final isIntentServiceThread:Z

.field private final looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/R;->looper:Landroid/os/Looper;

    .line 1066
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "IntentService["

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1033
    :goto_0
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/R;->isIntentServiceThread:Z

    return-void
.end method


# virtual methods
.method public final canDeliverNotification()Z
    .locals 3

    .line 2059
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/R;->looper:Landroid/os/Looper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2038
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/R;->isIntentServiceThread:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final checkCanDeliverNotification(Ljava/lang/String;)V
    .locals 2

    .line 3059
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/R;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3044
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Realm cannot be automatically updated on a thread without a looper."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3047
    :cond_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/R;->isIntentServiceThread:Z

    if-eqz v0, :cond_2

    .line 3048
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Realm cannot be automatically updated on an IntentService thread."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

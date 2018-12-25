.class final Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;
.super Ljava/lang/Object;
.source "ViewClickOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 10
    check-cast p1, Lrx/Subscriber;

    .line 1018
    invoke-static {}, Landroid/arch/lifecycle/MethodCallsLogger;->checkUiThread()V

    .line 1020
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;Lrx/Subscriber;)V

    .line 1027
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-void
.end method

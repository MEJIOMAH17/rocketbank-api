.class final Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;
.super Ljava/lang/Object;
.source "TextViewTextChangeEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;->view:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 3

    .line 12
    check-cast p1, Lrx/Subscriber;

    .line 1021
    invoke-static {}, Landroid/arch/lifecycle/MethodCallsLogger;->checkUiThread()V

    .line 1023
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;Lrx/Subscriber;)V

    .line 1036
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1038
    new-instance v1, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 1045
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;->create(Landroid/widget/TextView;Ljava/lang/CharSequence;III)Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;
.super Ljava/lang/Object;
.source "TextViewTextOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 2

    .line 12
    check-cast p1, Lrx/Subscriber;

    .line 1020
    invoke-static {}, Landroid/arch/lifecycle/MethodCallsLogger;->checkUiThread()V

    .line 1022
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;Lrx/Subscriber;)V

    .line 1035
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1037
    new-instance v1, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 1044
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

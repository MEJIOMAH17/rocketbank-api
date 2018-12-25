.class public final Lcom/jakewharton/rxbinding/widget/RxTextView;
.super Ljava/lang/Object;
.source "RxTextView.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/pay/samsung/RxSPay;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/AndroidModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/AndroidModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/AndroidModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 7015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7016
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RxTextView;->module:Lru/rocketbank/core/dagger/AndroidModule;

    .line 7017
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/RxTextView;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static afterTextChangeEvents(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable<",
            "Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    if-nez p0, :cond_0

    .line 6027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static editorActions(Landroid/widget/TextView;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    if-nez p0, :cond_0

    .line 1027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_0
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    const-string v1, "view == null"

    if-nez p0, :cond_1

    .line 2027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v1, "handled == null"

    if-nez v0, :cond_2

    .line 3027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1052
    :cond_2
    new-instance v1, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;-><init>(Landroid/widget/TextView;Lrx/functions/Func1;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static textChangeEvents(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable<",
            "Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    if-nez p0, :cond_0

    .line 5027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static textChanges(Landroid/widget/TextView;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    if-nez p0, :cond_0

    .line 4027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewTextOnSubscribe;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8022
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RxTextView;->contextProvider:Ljavax/inject/Provider;

    .line 8023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideSPay(Landroid/content/Context;)Lru/rocketbank/core/pay/samsung/RxSPay;

    move-result-object v0

    .line 8022
    check-cast v0, Lru/rocketbank/core/pay/samsung/RxSPay;

    return-object v0
.end method

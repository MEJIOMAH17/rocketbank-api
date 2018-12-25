.class public final Lcom/jakewharton/rxbinding/view/RxView;
.super Ljava/lang/Object;
.source "RxView.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/scottyab/rootbeer/RootBeer;",
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

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/RxView;->module:Lru/rocketbank/core/dagger/AndroidModule;

    .line 2018
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/RxView;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static clicks(Landroid/view/View;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    if-nez p0, :cond_0

    .line 1027
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 3023
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/RxView;->contextProvider:Ljavax/inject/Provider;

    .line 3024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lru/rocketbank/core/dagger/AndroidModule;->provideRootChecker(Landroid/content/Context;)Lcom/scottyab/rootbeer/RootBeer;

    move-result-object v0

    .line 3023
    check-cast v0, Lcom/scottyab/rootbeer/RootBeer;

    return-object v0
.end method

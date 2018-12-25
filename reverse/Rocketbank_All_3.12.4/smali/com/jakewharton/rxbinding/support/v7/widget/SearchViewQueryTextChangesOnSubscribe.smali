.class final Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe;
.super Ljava/lang/Object;
.source "SearchViewQueryTextChangesOnSubscribe.java"

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
.field final view:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/support/v7/widget/SearchView;

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
    new-instance v0, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe;Lrx/Subscriber;)V

    .line 1034
    iget-object v1, p0, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 1036
    new-instance v0, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 1043
    iget-object v0, p0, Lcom/jakewharton/rxbinding/support/v7/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
